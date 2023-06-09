use giochi_olimpici;


insert into città(nome, paese, investimento)
values ('Tokyo', 'Giapone', 270000000),
       ('Rio De Janerio', 'Brasile', 250000000),
       ('Londra', 'Regno Unito', 300000000);


insert into cerimonia(codice, dataApertura, dataChiusura)
values ('0000', '2021-07-23', '2021-08-08'),
       ('0001', '2016-8-5', '2016-8-21'),
       ('0010', '2012-07-27', '2012-08-12');


insert into olimpiade (edizione, mascotte, sede, cerimonia)
values ('XXXII', 'Miraitowa', 'Tokyo', '0000'),
       ('XXXI', null, 'Rio De Janerio', '0001'),
       ('XXX', '2012', 'Londra', '0010');


insert into zona (nome, città, zonaCopertura)
values ('Baia Di Tokyo', 'Tokyo', 'zona mare'),
       ('Fuori Tokyo', 'Tokyo', 'zona periferica'),
       ('Maracanà', 'Rio De Janerio', 'zona centrale'),
       ('Copacabana', 'Rio De Janerio', 'zona periferica'),
       ('Fiume', 'Londra', 'zona industriale'),
       ('Centrale', 'Londra', 'zona centrale');


insert into stadio (nome, capienza, zona)
values ('Ariake Arena', 15000, 'Baia Di Tokyo'),
       ('Ariake Gymnastics Centre', 12000, 'Baia Di Tokyo'),
       ('Ariake Coliseum', 19900, 'Baia Di Tokyo'),
       ('Parco marino di Odaiba', 5000, 'Baia Di Tokyo'),
       ('Parco Shiokaze', 12000, 'Baia Di Tokyo'),
       ('Aomi Urban Sports Park', 8400, 'Baia Di Tokyo'),
       ('Stadio di hockey di Ōi', 15000, 'Baia Di Tokyo'),
       ('Central Breakwater', 16000, 'Baia Di Tokyo'),
       ('Sea Forest Waterway', 16000, 'Baia Di Tokyo'),
       ('Kasai Canoe Slalom Centre', 7500, 'Baia Di Tokyo'),
       ('Parco di Yumenoshima', 5600, 'Baia Di Tokyo'),
       ('Tokyo Aquatics Centre', 15000, 'Baia Di Tokyo'),
       ('Tatsumi Water Polo Centre', 4700, 'Baia Di Tokyo'),
       ('Makuhari Messe', 10000, 'Baia Di Tokyo'),
       ('Parco Ōdōri di Sapporo', 2000, 'Fuori Tokyo'),
       ('Spiaggia di Tsurigasaki', 6000, 'Fuori Tokyo'),
       ('Saitama Super Arena', 21000, 'Fuori Tokyo'),
       ('Poligono di Asaka', 3200, 'Fuori Tokyo'),
       ('Kasumigaseki Country Club', 25000, 'Fuori Tokyo'),
       ('Enoshima', 3600, 'Fuori Tokyo'),
       ('Velodromo di Izu', 3600, 'Fuori Tokyo'),
       ('Izu MTB Course', 11500, 'Fuori Tokyo'),
       ('Circuito del Fuji', 22000, 'Fuori Tokyo'),
       ('Fukushima Azuma Baseball Stadium', 14300, 'Fuori Tokyo'),
       ('Yokohama Stadium', 35000, 'Fuori Tokyo'),
       ('Stadio Olimpico João Havelange', 41000, 'Maracanà'),
       ('Sambodromo di Rio de Janeiro', 28000, 'Maracanà'),
       ('Maracanã', 120000, 'Maracanà'),
       ('Ginásio do Maracanãzinho', 50000, 'Maracanà'),
       ('Estádio de Copacabana', 30000, 'Copacabana'),
       ('Forte di Copacabana', 21000, 'Copacabana'),
       ('Laguna Rodrigo de Freitas', 9000, 'Copacabana'),
       ('Marina da Glória', 13000, 'Copacabana'),
       ('ExCeL', 20000, 'Fiume'),
       ('Greenwich Park', 7500, 'Fiume'),
       ('North Greenwich Arena', 8500, 'Fiume'),
       ('Royal Artillery Barracks', 2300, 'Fiume'),
       ('All England Lawn Tennis and Croquet Club', 40000, 'Centrale'),
       ('Earls Court Exhibition Centre', 21000, 'Centrale'),
       ('Horse Guards Parade', 31000, 'Centrale'),
       ('Hyde Park', 10000, 'Centrale'),
       ('Lord''s Cricket Ground', 9000, 'Centrale'),
       ('Percorso Maratona', 10000, 'Centrale'),
       ('Regent''s Park', 7500, 'Centrale'),
       ('Wembley Arena', 40000, 'Centrale'),
       ('Wembley Stadium', 100000, 'Centrale');


insert into spettatore (CF, nome, cognome, età)
values ('AZVLNZ02D20H501B', 'Lorenzo', 'Diaz', 21),
       ('BZVLNZ02D20H501B', 'Alessandro', 'Diaz', 20),
       ('CZVLNZ02D20H501B', 'Alonzo', 'Diaz', 25),
       ('DZVLNZ02D20H501B', 'Marco', 'Rossi', 18),
       ('EZVLNZ02D20H501B', 'Alex', 'Neri', 28),
       ('FZVLNZ02D20H501B', 'Matteo', 'Pet', 20),
       ('GZVLNZ02D20H501B', 'Anna', 'Crog', 38),
       ('HZVLNZ02D20H501B', 'Anna', 'Gucc', 30),
       ('IZVLNZ02D20H501B', 'Alessandro', 'Undo', 19),
       ('JZVLNZ02D20H501B', 'Alessio', 'Macia', 34),
       ('KZVLNZ02H20H501B', 'Ilaria', 'Tempesti', 18),
       ('LZVLNZ02D20H501B', 'Thomas', 'Thompson', 50),
       ('MZVLNZ02D20H501B', 'Barack', 'Obama', 28),
       ('NZVLNZ02D20H501B', 'Sara', 'Neri', 28),
       ('OZVLNZ02D20H501B', 'Alex', 'Bianchi', 30),
       ('PZVLNZ02D20H501B', 'Marco', 'Rossi', 28),
       ('QZVLNZ02D20H501B', 'Pippo', 'Neri', 31),
       ('RZVLNZ02D20H501B', 'Pluto', 'Neri', 45),
       ('SZVLNZ02D20H501B', 'Alex', 'Neri', 44),
       ('TZVLNZ02D20H501B', 'Alex', 'Neri', 32),
       ('UZVLNZ02D20H501B', 'Alex', 'Neri', 33),
       ('VZVLMZ02D20H501B', 'Alex', 'Neri', 65),
       ('WZVLNZ02D20H501B', 'Alex', 'Neri', 47),
       ('XZVLNZ02D20H501B', 'Alex', 'Neri', 67),
       ('YZVLNZ02D20H501B', 'Alex', 'Neri', 21),
       ('ZZVLNA02D20H501B', 'Alex', 'Neri', 19),
       ('AAVLNZ02D20H501B', 'Lorenzo', 'Diaz', 21),
       ('BBVLNZ02D20H501B', 'Alessandro', 'Diaz', 20),
       ('CCVLNZ02D20H501B', 'Alonzo', 'Diaz', 25),
       ('DDVLNZ02D20H501B', 'Marco', 'Rossi', 18),
       ('EEVLNZ02D20H501B', 'Alex', 'Neri', 28),
       ('FFVLNZ02D20H501B', 'Matteo', 'Pet', 20),
       ('GGVLNZ02D20H501B', 'Anna', 'Crog', 38),
       ('HHVLNZ02D20H501B', 'Anna', 'Gucc', 30),
       ('IIVLNZ02D20H501B', 'Alessandro', 'Undo', 21),
       ('JJVLNZ02D20H501B', 'Alessio', 'Macia', 34),
       ('KKVLNZ01D20H501B', 'Ilaria', 'Tempesti', 18),
       ('LLVLNZ02D20H501B', 'Thomas', 'Thompson', 50),
       ('MMVLNZ02D20H501B', 'Barack', 'Obama', 28),
       ('NNVLNZ02D20H501B', 'Sara', 'Neri', 28),
       ('OOVLNZ02D20H501B', 'Alex', 'Bianchi', 30),
       ('PPVLNZ02D20H501B', 'Marco', 'Rossi', 28),
       ('QQVLNZ02D20H501B', 'Pippo', 'Neri', 31),
       ('RRVLNZ02D20H501B', 'Pluto', 'Neri', 45),
       ('SSVLNZ02D20H501B', 'Alex', 'Neri', 44),
       ('TTVLNZ02D20H501B', 'Alex', 'Neri', 32),
       ('UUVLNZ02D20H501B', 'Alex', 'Neri', 33),
       ('VVVLNZ02D20H501B', 'Alex', 'Neri', 65),
       ('WWVLNZ02D20H501B', 'Alex', 'Neri', 47),
       ('XXVLNZ02D20H501B', 'Alex', 'Neri', 67),
       ('YYVLNZ02D20H501B', 'Alex', 'Neri', 21),
       ('ZZVLNZ02D20H501B', 'Alex', 'Neri', 19),
       ('AZALNZ02D20H501B', 'Lorenzo', 'Diaz', 21),
       ('BZBLNZ02D20H501B', 'Alessandro', 'Diaz', 20),
       ('CZCLNZ02D20H501B', 'Alonzo', 'Diaz', 25),
       ('DZDLNZ02D20H501B', 'Marco', 'Rossi', 18),
       ('EZELNZ02D20H501B', 'Alex', 'Neri', 28),
       ('FZFLNZ02D20H501B', 'Matteo', 'Pet', 20),
       ('GZGLNZ02D20H501B', 'Anna', 'Crog', 38),
       ('HZHLNZ02D20H501B', 'Anna', 'Gucc', 30),
       ('IZILNZ02D20H501B', 'Alessandro', 'Undo', 18),
       ('JZJLNZ02D20H501B', 'Alessio', 'Macia', 34),
       ('KZVLNZ02D20H501B', 'Ilaria', 'Tempesti', 18),
       ('LZLLNZ02D20H501B', 'Thomas', 'Thompson', 50),
       ('MZMLNZ02D20H501B', 'Barack', 'Obama', 28),
       ('NZNLNZ02D20H501B', 'Sara', 'Neri', 28),
       ('OZOLNZ02D20H501B', 'Alex', 'Bianchi', 30),
       ('PZPLNZ02D20H501B', 'Marco', 'Rossi', 28),
       ('QZQLNZ02D20H501B', 'Pippo', 'Neri', 31),
       ('RZRLNZ02D20H501B', 'Pluto', 'Neri', 45),
       ('SZSLNZ02D20H501B', 'Alex', 'Neri', 44),
       ('TZTLNZ02D20H501B', 'Alex', 'Neri', 32),
       ('UZULNZ02D20H501B', 'Alex', 'Neri', 33),
       ('VZVLNZ02D20H501B', 'Alex', 'Neri', 65),
       ('WZWLNZ02D20H501B', 'Alex', 'Neri', 47),
       ('XZXLNZ02D20H501B', 'Alex', 'Neri', 67),
       ('YZYLNZ02D20H501B', 'Alex', 'Neri', 21),
       ('ZZZLNZ02D20H501B', 'Alex', 'Neri', 19),
       ('AAVLNA02D20H501B', 'Lorenzo', 'Diaz', 21),
       ('BBVLNB02D20H501B', 'Alessandro', 'Diaz', 20),
       ('CCVLNC02D20H501B', 'Alonzo', 'Diaz', 25),
       ('DDVLND02D20H501B', 'Marco', 'Rossi', 18),
       ('EEVLNE02D20H501B', 'Alex', 'Neri', 28),
       ('FFVLNF02D20H501B', 'Matteo', 'Pet', 20),
       ('GGVLNG02D20H501B', 'Anna', 'Crog', 38),
       ('HHVLNH02D20H501B', 'Anna', 'Gucc', 30),
       ('IIVLNI02D20H501B', 'Alessandro', 'Undo', 19),
       ('JJVLNJ02D20H501B', 'Alessio', 'Macia', 34),
       ('KKVLNZ02D20H501B', 'Ilaria', 'Tempesti', 18),
       ('LLVLNL02D20H501B', 'Thomas', 'Thompson', 50),
       ('MMVLNM02D20H501B', 'Barack', 'Obama', 28),
       ('NNVLNO02D20H501B', 'Sara', 'Neri', 28),
       ('OOVLNN02D20H501B', 'Alex', 'Bianchi', 30),
       ('PPVLNP02D20H501B', 'Marco', 'Rossi', 28),
       ('QQVLNQ02D20H501B', 'Pippo', 'Neri', 31),
       ('RRVLNR02D20H501B', 'Pluto', 'Neri', 45),
       ('SSVLNS02D20H501B', 'Alex', 'Neri', 44),
       ('TTVLNT02D20H501B', 'Alex', 'Neri', 32),
       ('UUVLNU02D20H501B', 'Alex', 'Neri', 33),
       ('VVVLNV02D20H501B', 'Alex', 'Neri', 65),
       ('WWVLNW02D20H501B', 'Alex', 'Neri', 47),
       ('XXVLNX02D20H501B', 'Alex', 'Neri', 67),
       ('YYVLNY02D20H501B', 'Alex', 'Neri', 21),
       ('ZZVLNZ02D20H501C', 'Alex', 'Neri', 19);


insert into biglietto (codice, postazione, stadio, spettatore)
values ('0000001', 1, 'Ariake Arena', 'AZVLNZ02D20H501B'),
       ('0000010', 2, 'Ariake Arena', 'BZVLNZ02D20H501B'),
       ('0000011', 1, 'Ariake Gymnastics Centre', 'CZVLNZ02D20H501B'),
       ('0000100', 2, 'Ariake Gymnastics Centre', 'DZVLNZ02D20H501B'),
       ('0000101', 1, 'Ariake Coliseum', 'EZVLNZ02D20H501B'),
       ('0000110', 1, 'Parco marino di Odaiba', 'GZVLNZ02D20H501B'),
       ('0000111', 2, 'Parco marino di Odaiba', 'HZVLNZ02D20H501B'),
       ('0001000', 1, 'Parco Shiokaze', 'IZVLNZ02D20H501B'),
       ('0001001', 2, 'Aomi Urban Sports Park', 'JZVLNZ02D20H501B'),
       ('0001010', 1, 'Stadio di hockey di Ōi', 'KZVLNZ02D20H501B'),
       ('0001011', 2, 'Central Breakwater', 'LZVLNZ02D20H501B'),
       ('0001100', 1, 'Sea Forest Waterway', 'MZVLNZ02D20H501B'),
       ('0001101', 2, 'Kasai Canoe Slalom Centre', 'NZVLNZ02D20H501B'),
       ('0001110', 1, 'Parco di Yumenoshima', 'OZVLNZ02D20H501B'),
       ('0001111', 2, 'Tokyo Aquatics Centre', 'PZVLNZ02D20H501B'),
       ('0010000', 1, 'Tatsumi Water Polo Centre', 'QZVLNZ02D20H501B'),
       ('0010001', 2, 'Makuhari Messe', 'RZVLNZ02D20H501B'),
       ('0010010', 1, 'Parco Ōdōri di Sapporo', 'SZVLNZ02D20H501B'),
       ('0010011', 2, 'Spiaggia di Tsurigasaki', 'TZVLNZ02D20H501B'),
       ('0010100', 1, 'Saitama Super Arena', 'UZVLNZ02D20H501B'),
       ('0010101', 2, 'Poligono di Asaka', 'VZVLNZ02D20H501B'),
       ('0010110', 1, 'Kasumigaseki Country Club', 'WZVLNZ02D20H501B'),
       ('0010111', 2, 'Enoshima', 'XZVLNZ02D20H501B'),
       ('0011000', 1, 'Velodromo di Izu', 'YZVLNZ02D20H501B'),
       ('0011001', 2, 'Izu MTB Course', 'ZZVLNZ02D20H501B'),
       ('0011010', 1, 'Circuito del Fuji', 'ZZVLNZ02D20H501C'),
       ('0011011', 2, 'Fukushima Azuma Baseball Stadium', 'YYVLNY02D20H501B'),
       ('0011100', 1, 'Yokohama Stadium', 'XXVLNX02D20H501B'),
       ('0011101', 2, 'Stadio Olimpico João Havelange', 'WWVLNW02D20H501B'),
       ('0011110', 1, 'Sambodromo di Rio de Janeiro', 'VVVLNV02D20H501B'),
       ('0011111', 2, 'Maracanã', 'UUVLNU02D20H501B'),
       ('0100001', 1, 'Maracanã', 'TTVLNT02D20H501B'),
       ('0100010', 2, 'Ginásio do Maracanãzinho', 'SSVLNS02D20H501B'),
       ('0100011', 1, 'Estádio de Copacabana', 'RRVLNR02D20H501B'),
       ('0100100', 2, 'Forte di Copacabana', 'QQVLNQ02D20H501B'),
       ('0100101', 1, 'Laguna Rodrigo de Freitas', 'PPVLNP02D20H501B'),
       ('0100110', 2, 'Laguna Rodrigo de Freitas', 'OOVLNN02D20H501B'),
       ('0100111', 1, 'Marina da Glória', 'NNVLNO02D20H501B'),
       ('0101000', 2, 'Marina da Glória', 'MMVLNM02D20H501B'),
       ('0101001', 1, 'ExCeL', 'LLVLNL02D20H501B'),
       ('0101010', 2, 'Greenwich Park', 'KKVLNZ02D20H501B'),
       ('0101011', 1, 'Greenwich Park', 'JJVLNJ02D20H501B'),
       ('0101100', 2, 'North Greenwich Arena', 'IIVLNI02D20H501B'),
       ('0101101', 1, 'North Greenwich Arena', 'HHVLNH02D20H501B'),
       ('0101110', 2, 'Royal Artillery Barracks', 'GGVLNG02D20H501B'),
       ('0101111', 1, 'All England Lawn Tennis and Croquet Club', 'FFVLNF02D20H501B'),
       ('0110000', 2, 'All England Lawn Tennis and Croquet Club', 'EEVLNE02D20H501B'),
       ('0110001', 1, 'Earls Court Exhibition Centre', 'FFVLNF02D20H501B'),
       ('0110010', 2, 'Earls Court Exhibition Centre', 'EEVLNE02D20H501B'),
       ('0110011', 1, 'Horse Guards Parade', 'GGVLNG02D20H501B'),
       ('0110100', 2, 'Horse Guards Parade', 'HHVLNH02D20H501B'),
       ('0110101', 1, 'Hyde Park', 'IIVLNI02D20H501B'),
       ('0110110', 2, 'Lord''s Cricket Ground', 'JJVLNJ02D20H501B'),
       ('0110111', 1, 'Percorso Maratona', 'KKVLNZ02D20H501B'),
       ('0111000', 2, 'Regent''s Park', 'LLVLNL02D20H501B'),
       ('0111001', 1, 'Regent''s Park', 'MMVLNM02D20H501B'),
       ('0111010', 2, 'Wembley Arena', 'NNVLNO02D20H501B'),
       ('0111011', 1, 'Wembley Arena', 'OOVLNN02D20H501B'),
       ('0111100', 2, 'Wembley Stadium', 'PPVLNP02D20H501B'),
       ('0111101', 1, 'Wembley Stadium', 'QQVLNQ02D20H501B'),
       ('0111110', 2, 'ExCeL', 'SSVLNS02D20H501B'),
       ('0111111', 1, 'Circuito del Fuji', 'WWVLNW02D20H501B'),
       ('1000001', 3, 'Ariake Arena', 'AZVLNZ02D20H501B'),
       ('1000010', 4, 'Ariake Arena', 'BZVLNZ02D20H501B'),
       ('1000011', 3, 'Ariake Gymnastics Centre', 'CZVLNZ02D20H501B'),
       ('1000100', 4, 'Ariake Gymnastics Centre', 'DZVLNZ02D20H501B'),
       ('1000101', 3, 'Ariake Coliseum', 'EZVLNZ02D20H501B'),
       ('1000110', 4, 'Parco marino di Odaiba', 'GZVLNZ02D20H501B'),
       ('1000111', 3, 'Parco marino di Odaiba', 'HZVLNZ02D20H501B'),
       ('1001000', 4, 'Parco Shiokaze', 'IZVLNZ02D20H501B'),
       ('1001001', 3, 'Aomi Urban Sports Park', 'JZVLNZ02D20H501B'),
       ('1001010', 4, 'Stadio di hockey di Ōi', 'KZVLNZ02D20H501B'),
       ('1001011', 3, 'Central Breakwater', 'LZVLNZ02D20H501B'),
       ('1001100', 4, 'Sea Forest Waterway', 'MZVLNZ02D20H501B'),
       ('1001101', 3, 'Kasai Canoe Slalom Centre', 'NZVLNZ02D20H501B'),
       ('1001110', 4, 'Parco di Yumenoshima', 'OZVLNZ02D20H501B'),
       ('1001111', 3, 'Tokyo Aquatics Centre', 'PZVLNZ02D20H501B'),
       ('1010000', 4, 'Tatsumi Water Polo Centre', 'QZVLNZ02D20H501B'),
       ('1010001', 3, 'Makuhari Messe', 'RZVLNZ02D20H501B'),
       ('1010010', 4, 'Parco Ōdōri di Sapporo', 'SZVLNZ02D20H501B'),
       ('1010011', 3, 'Spiaggia di Tsurigasaki', 'TZVLNZ02D20H501B'),
       ('1010100', 4, 'Saitama Super Arena', 'UZVLNZ02D20H501B'),
       ('1010101', 3, 'Poligono di Asaka', 'VZVLNZ02D20H501B'),
       ('1010110', 4, 'Kasumigaseki Country Club', 'WZVLNZ02D20H501B'),
       ('1010111', 3, 'Enoshima', 'XZVLNZ02D20H501B'),
       ('1011000', 4, 'Velodromo di Izu', 'YZVLNZ02D20H501B'),
       ('1011001', 3, 'Izu MTB Course', 'ZZVLNZ02D20H501B'),
       ('1011010', 4, 'Circuito del Fuji', 'ZZVLNZ02D20H501C'),
       ('1011011', 3, 'Fukushima Azuma Baseball Stadium', 'YYVLNY02D20H501B'),
       ('1011100', 4, 'Yokohama Stadium', 'XXVLNX02D20H501B'),
       ('1011101', 3, 'Stadio Olimpico João Havelange', 'WWVLNW02D20H501B'),
       ('1011110', 4, 'Sambodromo di Rio de Janeiro', 'VVVLNV02D20H501B'),
       ('1011111', 3, 'Maracanã', 'UUVLNU02D20H501B'),
       ('1100001', 4, 'Maracanã', 'TTVLNT02D20H501B'),
       ('1100010', 3, 'Ginásio do Maracanãzinho', 'SSVLNS02D20H501B'),
       ('1100011', 4, 'Estádio de Copacabana', 'RRVLNR02D20H501B'),
       ('1100100', 3, 'Forte di Copacabana', 'QQVLNQ02D20H501B'),
       ('1100101', 4, 'Laguna Rodrigo de Freitas', 'PPVLNP02D20H501B'),
       ('1100110', 3, 'Laguna Rodrigo de Freitas', 'OOVLNN02D20H501B'),
       ('1100111', 4, 'Marina da Glória', 'NNVLNO02D20H501B'),
       ('1101000', 3, 'Marina da Glória', 'MMVLNM02D20H501B'),
       ('1101001', 4, 'ExCeL', 'LLVLNL02D20H501B'),
       ('1101010', 3, 'Greenwich Park', 'KKVLNZ02D20H501B'),
       ('1101011', 4, 'Greenwich Park', 'JJVLNJ02D20H501B'),
       ('1101100', 3, 'North Greenwich Arena', 'IIVLNI02D20H501B'),
       ('1101101', 4, 'North Greenwich Arena', 'HHVLNH02D20H501B'),
       ('1101110', 3, 'Royal Artillery Barracks', 'GGVLNG02D20H501B'),
       ('1101111', 4, 'All England Lawn Tennis and Croquet Club', 'FFVLNF02D20H501B'),
       ('1110000', 3, 'All England Lawn Tennis and Croquet Club', 'EEVLNE02D20H501B'),
       ('1110001', 4, 'Earls Court Exhibition Centre', 'FFVLNF02D20H501B'),
       ('1110010', 3, 'Earls Court Exhibition Centre', 'EEVLNE02D20H501B'),
       ('1110011', 4, 'Horse Guards Parade', 'GGVLNG02D20H501B'),
       ('1110100', 3, 'Horse Guards Parade', 'HHVLNH02D20H501B'),
       ('1110101', 4, 'Hyde Park', 'IIVLNI02D20H501B'),
       ('1110110', 3, 'Lord''s Cricket Ground', 'JJVLNJ02D20H501B'),
       ('1110111', 4, 'Percorso Maratona', 'KKVLNZ02D20H501B'),
       ('1111000', 3, 'Regent''s Park', 'LLVLNL02D20H501B'),
       ('1111001', 4, 'Regent''s Park', 'MMVLNM02D20H501B'),
       ('1111010', 3, 'Wembley Arena', 'NNVLNO02D20H501B'),
       ('1111011', 4, 'Wembley Arena', 'OOVLNN02D20H501B'),
       ('1111100', 3, 'Wembley Stadium', 'PPVLNP02D20H501B'),
       ('1111101', 4, 'Wembley Stadium', 'QQVLNQ02D20H501B'),
       ('1111110', 3, 'ExCeL', 'SSVLNS02D20H501B'),
       ('1111111', 4, 'Circuito del Fuji', 'WWVLNW02D20H501B');


insert into gioco (disciplina, descrizione, edizione)
values ('Atletica Leggera', 'Corsa a tempo', 'XXXII'),
       ('Lotta', 'Sfida con un avversario', 'XXXII'),
       ('Sollevamento Pesi', 'Gara a chi solleva un peso più alto', 'XXXII'),
       ('Nuoto', 'Gara su uno degli stili del nuoto', 'XXXII'),
       ('Tennis', 'Sfida con miniracchette su un minicampo', 'XXXII'),
       ('Salto a ostacoli', 'Gara di corsa evitando gli ostacoli', 'XXXI'),
       ('Salto in alto', 'Gara a chi salta più alto di una sbarra', 'XXXI'),
       ('Nuoto', 'Gara su uno degli stili del nuoto', 'XXXI'),
       ('Tuffi', 'Gara a chi esegue la miglior performance', 'XXXI'),
       ('Triathlon', 'Gara a chi esegue tutto il percorso nel minor tempo possibile', 'XXXI'),
       ('Triathlon', 'Gara a chi esegue tutto il percorso nel minor tempo possibile', 'XXX'),
       ('Nuoto', 'Gara su uno degli stili del nuoto', 'XXX'),
       ('Tennis', 'Sfida con miniracchette su un minicampo', 'XXX'),
       ('Equitazione', 'Gara a chi esegue il percorso completo con un cavallo', 'XXX'),
       ('Ginnastica', 'Gara a chi esegue le migliori prestazioni nelle varie categorie', 'XXX');


insert into atleta (ID, nome, cognome, nazione, dataNascita)
values ('0000001', 'Marco', 'Del Lungo', 'Italia', '1990-04-20'),
       ('0000002', 'Gonzalo', 'Echenique', 'Argentina', '1988-05-23'),
       ('0000003', 'Ben', 'Hallock', 'USA', '1996-10-22'),
       ('0000004', 'Petar', 'Tesanovic', 'Montenegro', '1998-12-30'),
       ('0000005', 'Vincenzo', 'Dolce', 'Italia', '1990-02-01'),
       ('0000006', 'Boris', 'Vapensky', 'Serbia', '1994-06-01'),
       ('0000007', 'Konstantiv', 'Karkov', 'Serbia', '1990-02-14'),
       ('0000008', 'Sandro', 'Sukno', 'Croazia', '1989-12-21'),
       ('0000009', 'Marco', 'Bijac', 'Croazia', '1993-03-01'),
       ('0000010', 'Alessandro', 'Velotto', 'Italia', '1994-02-01'),
       ('0000011', 'Gergo', 'Zalanki', 'Ungheria', '1995-01-01'),
       ('0000012', 'Novak', 'Povovik', 'Serbia', '2001-02-01'),
       ('0000013', 'Andrej', 'Prlainovic', 'Serbia', '1989-02-01'),
       ('0000014', 'Thomas', 'Thompson', 'USA', '2001-02-01'),
       ('0000015', 'Dusan', 'Mandic', 'Serbia', '1990-05-01'),
       ('0000016', 'Yuto', 'Horigome', 'Giappone', '1990-02-23'),
       ('0000017', 'Rayssa', 'Leal', 'Svizzera', '1994-02-01'),
       ('0000018', 'Katue', 'Ledecky', 'USA', '1988-02-01'),
       ('0000019', 'Kristof', 'Milak', 'Montenegro', '1991-08-01'),
       ('0000020', 'Kaylee', 'McKeown', 'USA', '1998-02-01'),
       ('0000021', 'Flora', 'Duffy', 'USA', '1985-02-01'),
       ('0000022', 'Armand', 'Duplantis', 'Svizzera', '1990-02-01'),
       ('0000023', 'Yaroslava', 'Mauchikh', 'Ucraina', '1988-01-23'),
       ('0000024', 'Carlos', 'Yulo', 'Cina', '1989-01-23'),
       ('0000025', 'Neymar', 'Da Silva', 'Brasile', '1990-01-23'),
       ('0000026', 'Marco', 'Sterling', 'Inghilterra', '1998-01-23'),
       ('0000027', 'Omar', 'Caponi', 'Italia', '1990-04-20'),
       ('0000028', 'Mattia', 'Concu', 'Argentina', '1988-05-23'),
       ('0000029', 'Vale', 'Bobbi', 'USA', '1996-10-22'),
       ('0000030', 'Gab', 'Gatt', 'Montenegro', '1998-12-30'),
       ('0000031', 'Alex', 'Vale', 'Italia', '1990-02-01'),
       ('0000032', 'Jacopo', 'Speck', 'Serbia', '1994-06-01'),
       ('0000033', 'Ricky', 'Cokov', 'Serbia', '1990-02-14'),
       ('0000034', 'Leo', 'De Santik', 'Croazia', '1989-12-21'),
       ('0000035', 'Tommaso', 'Bigliac', 'Croazia', '1993-03-01'),
       ('0000036', 'Giuseppe', 'De Ang', 'Italia', '1994-02-01'),
       ('0000037', 'Samuele', 'Boezki', 'Ungheria', '1995-01-01'),
       ('0000038', 'Mirco', 'Pincik', 'Serbia', '2001-02-01'),
       ('0000039', 'Andrej', 'Stakj', 'Serbia', '1989-02-01'),
       ('0000040', 'Samuel', 'Mancons', 'USA', '2001-02-01'),
       ('0000041', 'Asia', 'Mandic', 'Serbia', '1990-05-01'),
       ('0000042', 'Giulio', 'Serigome', 'Giappone', '1990-02-23'),
       ('0000043', 'Clarissa', 'Lealy', 'Svizzera', '1994-02-01'),
       ('0000044', 'Katye', 'Medeckys', 'USA', '1988-02-01'),
       ('0000045', 'Daniele', 'Milakelli', 'Montenegro', '1991-08-01'),
       ('0000046', 'David', 'McKeown', 'USA', '1998-02-01'),
       ('0000047', 'Massimo', 'Taffy', 'USA', '1985-02-01'),
       ('0000048', 'Fabio', 'Dupietris', 'Svizzera', '1990-02-01'),
       ('0000049', 'Paolo', 'Tafchikh', 'Ucraina', '1988-01-23'),
       ('0000050', 'Carlos', 'Marcos', 'Cina', '1989-01-23'),
       ('0000051', 'Mathias', 'Da Silva', 'Brasile', '1990-01-23'),
       ('0000052', 'Raheem', 'Ster', 'Inghilterra', '1998-01-23'),
       ('0000053', 'Alberto', 'Lopez', 'Argentina', '1990-11-23'),
       ('0000054', 'Eliud', 'Kipchoge', 'Kenia', '1994-11-23'),
       ('0000055', 'Tadej', 'Podakar', 'Slovenia', '1990-10-23'),
       ('0000056', 'Andrea', 'Perciballe', 'Italia', '1999-11-23'),
       ('0000057', 'Serena', 'Williams', 'USA', '1983-11-23'),
       ('0000058', 'Tomoa', 'Narasaki', 'Giappome', '1992-11-23'),
       ('0000059', 'Carissa', 'Moore', 'USA', '1999-11-23'),
       ('0000060', 'Felipe', 'Toledo', 'Brasile', '1989-11-23');


insert into competizione (atleta, gioco, edizione, posizione)
values ('0000001', 'Atletica Leggera', 'XXXII', 7),
       ('0000002', 'Atletica Leggera', 'XXXII', 8),
       ('0000003', 'Atletica Leggera', 'XXXII', 3),
       ('0000004', 'Atletica Leggera', 'XXXII', 4),
       ('0000005', 'Atletica Leggera', 'XXXII', 5),
       ('0000006', 'Atletica Leggera', 'XXXII', 6),
       ('0000009', 'Atletica Leggera', 'XXXII', 1),
       ('0000010', 'Atletica Leggera', 'XXXII', 2),
       ('0000029', 'Lotta', 'XXXII', 1),
       ('0000045', 'Lotta', 'XXXII', 2),
       ('0000007', 'Lotta', 'XXXII', 5),
       ('0000008', 'Lotta', 'XXXII', 4),
       ('0000009', 'Lotta', 'XXXII', 3),
       ('0000010', 'Lotta', 'XXXII', 6),
       ('0000011', 'Lotta', 'XXXII', 7),
       ('0000012', 'Lotta', 'XXXII', 8),
       ('0000009', 'Sollevamento Pesi', 'XXXII', 1),
       ('0000010', 'Sollevamento Pesi', 'XXXII', 5),
       ('0000011', 'Sollevamento Pesi', 'XXXII', 6),
       ('0000012', 'Sollevamento Pesi', 'XXXII', 9),
       ('0000001', 'Sollevamento Pesi', 'XXXII', 7),
       ('0000002', 'Sollevamento Pesi', 'XXXII', 8),
       ('0000045', 'Sollevamento Pesi', 'XXXII', 3),
       ('0000004', 'Sollevamento Pesi', 'XXXII', 4),
       ('0000029', 'Sollevamento Pesi', 'XXXII', 2),
       ('0000006', 'Sollevamento Pesi', 'XXXII', 10),
       ('0000013', 'Nuoto', 'XXXII', 9),
       ('0000014', 'Nuoto', 'XXXII', 10),
       ('0000015', 'Nuoto', 'XXXII', 11),
       ('0000016', 'Nuoto', 'XXXII', 12),
       ('0000001', 'Nuoto', 'XXXII', 7),
       ('0000002', 'Nuoto', 'XXXII', 8),
       ('0000029', 'Nuoto', 'XXXII', 3),
       ('0000004', 'Nuoto', 'XXXII', 4),
       ('0000005', 'Nuoto', 'XXXII', 2),
       ('0000006', 'Nuoto', 'XXXII', 6),
       ('0000009', 'Nuoto', 'XXXII', 1),
       ('0000010', 'Nuoto', 'XXXII', 2),
       ('0000053', 'Nuoto', 'XXXII', 13),
       ('0000054', 'Nuoto', 'XXXII', 14),
       ('0000055', 'Nuoto', 'XXXII', 20),
       ('0000056', 'Nuoto', 'XXXII', 15),
       ('0000057', 'Nuoto', 'XXXII', 16),
       ('0000058', 'Nuoto', 'XXXII', 17),
       ('0000059', 'Nuoto', 'XXXII', 18),
       ('0000060', 'Nuoto', 'XXXII', 19),
       ('0000017', 'Tennis', 'XXXII', 1),
       ('0000018', 'Tennis', 'XXXII', 2),
       ('0000045', 'Tennis', 'XXXII', 3),
       ('0000020', 'Tennis', 'XXXII', 4),
       ('0000029', 'Salto a ostacoli', 'XXXI', 1),
       ('0000045', 'Salto a ostacoli', 'XXXI', 2),
       ('0000023', 'Salto a ostacoli', 'XXXI', 3),
       ('0000024', 'Salto a ostacoli', 'XXXI', 4),
       ('0000025', 'Salto in alto', 'XXXI', 27),
       ('0000026', 'Salto in alto', 'XXXI', 26),
       ('0000027', 'Salto in alto', 'XXXI', 25),
       ('0000028', 'Salto in alto', 'XXXI', 24),
       ('0000029', 'Salto in alto', 'XXXI', 1),
       ('0000030', 'Salto in alto', 'XXXI', 2),
       ('0000031', 'Salto in alto', 'XXXI', 3),
       ('0000032', 'Salto in alto', 'XXXI', 4),
       ('0000013', 'Salto in alto', 'XXXI', 9),
       ('0000014', 'Salto in alto', 'XXXI', 10),
       ('0000015', 'Salto in alto', 'XXXI', 11),
       ('0000016', 'Salto in alto', 'XXXI', 12),
       ('0000001', 'Salto in alto', 'XXXI', 7),
       ('0000002', 'Salto in alto', 'XXXI', 8),
       ('0000003', 'Salto in alto', 'XXXI', 15),
       ('0000004', 'Salto in alto', 'XXXI', 16),
       ('0000005', 'Salto in alto', 'XXXI', 5),
       ('0000006', 'Salto in alto', 'XXXI', 6),
       ('0000009', 'Salto in alto', 'XXXI', 13),
       ('0000010', 'Salto in alto', 'XXXI', 14),
       ('0000053', 'Salto in alto', 'XXXI', 21),
       ('0000054', 'Salto in alto', 'XXXI', 22),
       ('0000055', 'Salto in alto', 'XXXI', 23),
       ('0000056', 'Salto in alto', 'XXXI', 15),
       ('0000057', 'Salto in alto', 'XXXI', 16),
       ('0000058', 'Salto in alto', 'XXXI', 17),
       ('0000059', 'Salto in alto', 'XXXI', 18),
       ('0000060', 'Salto in alto', 'XXXI', 19),
       ('0000029', 'Nuoto', 'XXXI', 1),
       ('0000030', 'Nuoto', 'XXXI', 2),
       ('0000031', 'Nuoto', 'XXXI', 3),
       ('0000032', 'Nuoto', 'XXXI', 4),
       ('0000013', 'Nuoto', 'XXXI', 9),
       ('0000014', 'Nuoto', 'XXXI', 10),
       ('0000015', 'Nuoto', 'XXXI', 11),
       ('0000016', 'Nuoto', 'XXXI', 12),
       ('0000001', 'Nuoto', 'XXXI', 7),
       ('0000002', 'Nuoto', 'XXXI', 8),
       ('0000003', 'Nuoto', 'XXXI', 15),
       ('0000004', 'Nuoto', 'XXXI', 16),
       ('0000005', 'Nuoto', 'XXXI', 5),
       ('0000006', 'Nuoto', 'XXXI', 6),
       ('0000009', 'Nuoto', 'XXXI', 13),
       ('0000010', 'Nuoto', 'XXXI', 14),
       ('0000053', 'Nuoto', 'XXXI', 21),
       ('0000054', 'Nuoto', 'XXXI', 22),
       ('0000055', 'Nuoto', 'XXXI', 23),
       ('0000056', 'Nuoto', 'XXXI', 15),
       ('0000057', 'Nuoto', 'XXXI', 16),
       ('0000058', 'Nuoto', 'XXXI', 17),
       ('0000059', 'Nuoto', 'XXXI', 18),
       ('0000060', 'Nuoto', 'XXXI', 19),
       ('0000033', 'Tuffi', 'XXXI', 1),
       ('0000034', 'Tuffi', 'XXXI', 2),
       ('0000035', 'Tuffi', 'XXXI', 3),
       ('0000036', 'Tuffi', 'XXXI', 4),
       ('0000001', 'Tuffi', 'XXXI', 7),
       ('0000002', 'Tuffi', 'XXXI', 8),
       ('0000003', 'Tuffi', 'XXXI', 5),
       ('0000004', 'Tuffi', 'XXXI', 6),
       ('0000005', 'Tuffi', 'XXXI', 9),
       ('0000006', 'Tuffi', 'XXXI', 10),
       ('0000009', 'Tuffi', 'XXXI', 13),
       ('0000010', 'Tuffi', 'XXXI', 14),
       ('0000053', 'Tuffi', 'XXXI', 11),
       ('0000054', 'Tuffi', 'XXXI', 12),
       ('0000055', 'Tuffi', 'XXXI', 20),
       ('0000056', 'Tuffi', 'XXXI', 15),
       ('0000057', 'Tuffi', 'XXXI', 16),
       ('0000058', 'Tuffi', 'XXXI', 17),
       ('0000059', 'Tuffi', 'XXXI', 18),
       ('0000060', 'Tuffi', 'XXXI', 19),
       ('0000037', 'Triathlon', 'XXXI', 1),
       ('0000038', 'Triathlon', 'XXXI', 2),
       ('0000039', 'Triathlon', 'XXXI', 3),
       ('0000040', 'Triathlon', 'XXXI', 4),
       ('0000041', 'Triathlon', 'XXX', 5),
       ('0000042', 'Triathlon', 'XXX', 6),
       ('0000043', 'Triathlon', 'XXX', 7),
       ('0000044', 'Triathlon', 'XXX', 8),
       ('0000009', 'Triathlon', 'XXX', 1),
       ('0000038', 'Triathlon', 'XXX', 2),
       ('0000039', 'Triathlon', 'XXX', 3),
       ('0000040', 'Triathlon', 'XXX', 4),
       ('0000045', 'Nuoto', 'XXX', 1),
       ('0000046', 'Nuoto', 'XXX', 2),
       ('0000047', 'Nuoto', 'XXX', 3),
       ('0000048', 'Nuoto', 'XXX', 4),
       ('0000013', 'Nuoto', 'XXX', 9),
       ('0000014', 'Nuoto', 'XXX', 10),
       ('0000015', 'Nuoto', 'XXX', 11),
       ('0000016', 'Nuoto', 'XXX', 12),
       ('0000001', 'Nuoto', 'XXX', 7),
       ('0000002', 'Nuoto', 'XXX', 8),
       ('0000003', 'Nuoto', 'XXX', 15),
       ('0000004', 'Nuoto', 'XXX', 16),
       ('0000005', 'Nuoto', 'XXX', 5),
       ('0000006', 'Nuoto', 'XXX', 6),
       ('0000009', 'Nuoto', 'XXX', 13),
       ('0000010', 'Nuoto', 'XXX', 14),
       ('0000049', 'Tennis', 'XXX', 29),
       ('0000050', 'Tennis', 'XXX', 30),
       ('0000051', 'Tennis', 'XXX', 31),
       ('0000052', 'Tennis', 'XXX', 32),
       ('0000017', 'Tennis', 'XXX', 25),
       ('0000018', 'Tennis', 'XXX', 26),
       ('0000019', 'Tennis', 'XXX', 27),
       ('0000020', 'Tennis', 'XXX', 28),
       ('0000053', 'Tennis', 'XXX', 21),
       ('0000054', 'Tennis', 'XXX', 22),
       ('0000055', 'Tennis', 'XXX', 23),
       ('0000056', 'Tennis', 'XXX', 24),
       ('0000057', 'Tennis', 'XXX', 17),
       ('0000058', 'Tennis', 'XXX', 18),
       ('0000059', 'Tennis', 'XXX', 19),
       ('0000060', 'Tennis', 'XXX', 20),
       ('0000045', 'Tennis', 'XXX', 1),
       ('0000046', 'Tennis', 'XXX', 2),
       ('0000047', 'Tennis', 'XXX', 3),
       ('0000048', 'Tennis', 'XXX', 4),
       ('0000013', 'Tennis', 'XXX', 9),
       ('0000014', 'Tennis', 'XXX', 10),
       ('0000015', 'Tennis', 'XXX', 11),
       ('0000016', 'Tennis', 'XXX', 12),
       ('0000001', 'Tennis', 'XXX', 7),
       ('0000002', 'Tennis', 'XXX', 8),
       ('0000003', 'Tennis', 'XXX', 15),
       ('0000004', 'Tennis', 'XXX', 16),
       ('0000005', 'Tennis', 'XXX', 5),
       ('0000006', 'Tennis', 'XXX', 6),
       ('0000009', 'Tennis', 'XXX', 13),
       ('0000010', 'Tennis', 'XXX', 14),
       ('0000053', 'Equitazione', 'XXX', 21),
       ('0000054', 'Equitazione', 'XXX', 22),
       ('0000055', 'Equitazione', 'XXX', 23),
       ('0000056', 'Equitazione', 'XXX', 24),
       ('0000057', 'Equitazione', 'XXX', 17),
       ('0000058', 'Equitazione', 'XXX', 18),
       ('0000059', 'Equitazione', 'XXX', 19),
       ('0000060', 'Equitazione', 'XXX', 20),
       ('0000045', 'Equitazione', 'XXX', 1),
       ('0000046', 'Equitazione', 'XXX', 2),
       ('0000047', 'Equitazione', 'XXX', 3),
       ('0000048', 'Equitazione', 'XXX', 4),
       ('0000013', 'Equitazione', 'XXX', 9),
       ('0000014', 'Equitazione', 'XXX', 10),
       ('0000015', 'Equitazione', 'XXX', 11),
       ('0000016', 'Equitazione', 'XXX', 12),
       ('0000001', 'Equitazione', 'XXX', 7),
       ('0000002', 'Equitazione', 'XXX', 8),
       ('0000003', 'Equitazione', 'XXX', 15),
       ('0000004', 'Equitazione', 'XXX', 16),
       ('0000005', 'Equitazione', 'XXX', 5),
       ('0000006', 'Equitazione', 'XXX', 6),
       ('0000009', 'Equitazione', 'XXX', 13),
       ('0000010', 'Equitazione', 'XXX', 14),
       ('0000057', 'Ginnastica', 'XXX', 17),
       ('0000058', 'Ginnastica', 'XXX', 18),
       ('0000059', 'Ginnastica', 'XXX', 19),
       ('0000060', 'Ginnastica', 'XXX', 20),
       ('0000045', 'Ginnastica', 'XXX', 1),
       ('0000046', 'Ginnastica', 'XXX', 2),
       ('0000047', 'Ginnastica', 'XXX', 3),
       ('0000048', 'Ginnastica', 'XXX', 4),
       ('0000013', 'Ginnastica', 'XXX', 9),
       ('0000014', 'Ginnastica', 'XXX', 10),
       ('0000015', 'Ginnastica', 'XXX', 11),
       ('0000016', 'Ginnastica', 'XXX', 12),
       ('0000001', 'Ginnastica', 'XXX', 7),
       ('0000002', 'Ginnastica', 'XXX', 8),
       ('0000003', 'Ginnastica', 'XXX', 15),
       ('0000004', 'Ginnastica', 'XXX', 16),
       ('0000005', 'Ginnastica', 'XXX', 5),
       ('0000006', 'Ginnastica', 'XXX', 6),
       ('0000009', 'Ginnastica', 'XXX', 13),
       ('0000010', 'Ginnastica', 'XXX', 14);