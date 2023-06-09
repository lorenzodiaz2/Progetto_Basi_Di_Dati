create database if not exists giochi_olimpici;

use giochi_olimpici;

drop table if exists città;

create table città
(
    nome         varchar(20) not null,
    paese        varchar(20) not null,
    investimento int(11)     not null,
    primary key (nome)
);

drop table if exists cerimonia;

create table cerimonia
(
    codice       varchar(8) not null,
    dataApertura date       not null,
    dataChiusura date       not null,
    primary key (codice),
    constraint cerimonia_ibfk_1 check ( dataApertura < dataChiusura )
);

drop table if exists olimpiade;

create table olimpiade
(
    edizione  varchar(8)  not null,
    mascotte  varchar(20),
    sede      varchar(20) not null,
    cerimonia varchar(8)  not null,
    primary key (edizione),
    constraint olimpiade_ibfk_1 foreign key (sede) references città (nome),
    constraint olimpiade_ibfk_2 foreign key (cerimonia) references cerimonia (codice)
);

drop table if exists atleta;

create table atleta
(
    ID          varchar(8)  not null,
    nome        varchar(20) not null,
    cognome     varchar(20) not null,
    nazione     varchar(20) not null,
    dataNascita date        not null,
    primary key (ID)
);

drop table if exists gioco;

create table gioco
(
    disciplina  varchar(20)   not null,
    descrizione varchar(4000) not null,
    edizione    varchar(8)    not null,
    primary key (disciplina, edizione),
    constraint gioco_ibfk_1 foreign key (edizione) references olimpiade (edizione)
);

drop table if exists competizione;

create table competizione
(
    atleta    varchar(8)  not null,
    gioco     varchar(20) not null,
    edizione  varchar(8)  not null,
    posizione int(11)     not null,
    primary key (atleta, gioco, edizione),
    constraint competizione_ibfk_1 foreign key (atleta) references atleta (ID),
    constraint competizione_ibfk_2 foreign key (gioco, edizione) references gioco (disciplina, edizione),
    constraint competizione_ibfk_3 check ( posizione > 0 )
);

drop table if exists zona;

create table zona
(
    nome          varchar(20) not null,
    città         varchar(20) not null,
    zonaCopertura varchar(20) not null,
    primary key (nome),
    constraint zona_ibfk_1 foreign key (città) references città (nome)
);

drop table if exists stadio;

create table stadio
(
    nome     varchar(100) not null,
    capienza int(11)      not null,
    zona     varchar(20)  not null,
    primary key (nome),
    constraint stadio_ibfk_1 foreign key (zona) references zona (nome)
);

drop table if exists spettatore;

create table spettatore
(
    CF      varchar(20) not null,
    nome    varchar(20) not null,
    cognome varchar(20) not null,
    età     int(11)     not null,
    primary key (CF),
    constraint checkSpettatoreAge check (età >= 18)
);

drop table if exists biglietto;

create table biglietto
(
    codice     varchar(8)  not null,
    postazione int(11)     not null,
    stadio     varchar(40) not null,
    spettatore varchar(20) not null,
    primary key (codice),
    constraint biglietto_ibfk_1 foreign key (stadio) references stadio (nome),
    constraint biglietto_ibfk_2 foreign key (spettatore) references spettatore (CF),
    constraint checkPostazione check ( postazione > 0 )
);