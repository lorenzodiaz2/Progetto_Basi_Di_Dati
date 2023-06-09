use giochi_olimpici;

-- SP per ottenere il numero di biglietti rimanenti per gli stadi di una data edizione

delimiter
&&
create procedure getBigliettiDisponibili(in edizioneInput varchar (8))
begin
select s.nome as stadio, capienza - count(*) as biglietti_disponibili
from biglietto
         inner join stadio s
                    on biglietto.stadio = s.nome
         inner join zona z
                    on s.zona = z.nome
         inner join città c
                    on z.città = c.nome
         inner join olimpiade o
                    on c.nome = o.sede
where edizione like edizioneInput
group by s.nome;
end
&&
delimiter ;


-- SP per ottenere la classifica delle nazioni con più atleti nel podio in una data edizione

delimiter
$$
create procedure getMedagliere(in edizioneInput varchar (8))
begin
select nazione, count(*) as numMedaglie
from atleta a
         inner join competizione c
                    on a.ID = c.atleta
         inner join gioco g
                    on c.gioco = g.disciplina and c.edizione = g.edizione
where (posizione = 1 or posizione = 2 or posizione = 3)
  and g.edizione like edizioneInput
group by nazione
order by numMedaglie desc;
end $$
delimiter ;


-- SP per ottenere gli investimenti ed il numero di stadi messi a disposizione da ogni città per ogni edizione

delimiter
$$
create procedure getInvestimenti()
begin
select edizione, c.nome as città, investimento, count(s.nome) as numeroStadi
from olimpiade o
         inner join città c on o.sede = c.nome
         inner join zona z on c.nome = z.città
         inner join stadio s on z.nome = s.zona
group by edizione, c.nome, investimento
order by edizione;
end $$
delimiter ;


-- SP per ottenere gli atleti più premiati (sul podio) in tutte le edizioni. Utilizzo una User Defined Function per evitare di ripetere righe di codice.

delimiter
$$
create function getNumMedaglie(id varchar (8), posizioneInput int (5))
    returns int
    (5)
    deterministic
begin
    declare
numeroMedaglie int(5);
select count(*)
into numeroMedaglie
from competizione
where atleta = id
  and posizione = posizioneInput;
return numeroMedaglie;
end $$
delimiter ;


delimiter
$$
create procedure getAtletiPiùPremiati()
begin
select concat(a.nome, ' ', a.cognome) as nome,
       getNumMedaglie(a.ID, 1)        as numeroOri,
       getNumMedaglie(a.ID, 2)        as numeroArgenti,
       getNumMedaglie(a.ID, 3)        as numeroBronzi
from atleta a
         inner join competizione c on a.ID = c.atleta
where posizione = 1
   or posizione = 2
   or posizione = 3
group by ID
order by numeroOri desc, numeroArgenti desc, numeroBronzi desc;
end $$
delimiter ;


-- Trigger per controllare che non vengano venduti più biglietti della capienza dello stadio

delimiter
$$
create trigger checkCapienza
    before insert
    on biglietto
    for each row
begin
    declare capienzaStadio int(11);
    declare numeroBiglietti int(11);
    select capienza into capienzaStadio from stadio where nome like NEW.stadio;
    select count(*) into numeroBiglietti from biglietto where stadio like NEW.stadio;
    if (numeroBiglietti >= capienzaStadio) then
        set @signal = concat('Capienza piena per lo stadio ', NEW.stadio);
        SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = @signal;
end if;
end $$
delimiter ;


-- Trigger per controllare che il numero della postazione di un biglietto non sia maggiore della capienza dello stadio

delimiter
$$
create trigger checkPostazione
    before insert
    on biglietto
    for each row
begin
    declare capienzaStadio int(11);
    select capienza into capienzaStadio from stadio where nome like NEW.stadio;
    if (NEW.postazione > capienzaStadio) then
        set @signal = concat('La postazione ', NEW.postazione, ' per lo stadio ', NEW.stadio, ' non è valida');
        SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = @signal;
end if;
end $$
delimiter ;


-- Trigger per controllare che un atleta abbia almeno 18 anni rispetto alla data di inizio dell' edizione in cui compete

delimiter
$$
create trigger checkAge
    before insert
    on competizione
    for each row
begin
    declare dataNascitaAtleta date;
    declare dataEdizione date;
    select dataNascita into dataNascitaAtleta from atleta where id = NEW.atleta;
    select dataApertura
    into dataEdizione
    from cerimonia c
             inner join olimpiade o on c.codice = o.cerimonia
    where o.edizione like NEW.edizione;
    if (year(dataEdizione) - year(dataNascitaAtleta) < 18) then
        set @signal =
                concat('L\' atleta ', (select concat(a.nome, ' ', a.cognome) from atleta a where id like NEW.atleta),
                       ' è troppo giovane per competere nell\' edizione ',
                       (select edizione from olimpiade o where o.edizione like NEW.edizione), '. Tra ',
                       (18 - (year(sysdate()) - year(dataNascitaAtleta))),
                       ' anni potrà partecipare alla prossima edizione');
        SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = @signal;
end if;
end $$
delimiter ;


-- Trigger per controllare che una postazione di un biglietto per uno stadio non sia duplicata

delimiter
$$
create trigger checkPostazioniDuplicate
    before insert
    on biglietto
    for each row
begin
    set @postazione = -1;
    select postazione into @postazione from biglietto where postazione = NEW.postazione and stadio = NEW.stadio;
    if (@postazione > 0) then
        set @signal = concat('La postazione ', NEW.postazione, ' per lo stadio ',
                             NEW.stadio, ' è gia occupata. Trovare un\' altra postazione!');
        SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = @signal;
    end if;

end $$
delimiter ;


-- Vista per ottenere gli atleti che hanno partecipato alle edizioni delle olimpiadi, la relativa nazione, disciplina e posizione di gara

create view atletiPartecipanti as
select concat(a.nome, ' ', a.cognome) as atleta, nazione, disciplina, posizione, c.edizione
from atleta a
         inner join competizione c on a.ID = c.atleta
         inner join gioco g on c.gioco = g.disciplina and c.edizione = g.edizione
order by edizione, disciplina, posizione;