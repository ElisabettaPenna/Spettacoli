Create table if not exists biglietti(
cod_operazione int auto_increment primary key not null,
id_spettacolo char (4) not null,
cod_cliente char(4) not null,
tipo_pagamento varchar(20) not null,
qt_biglietti smallint not null
);

insert into biglietti (id_spettacolo, cod_cliente, tipo_pagamento, qt_biglietti) values
("SP11", "CL01","Bancomat","3"),
("SP02", "CL07","Paypal","4"),
("SP01", "CL08","Bancomat","2");

create table if not exists spettacoli(
id_spettacolo char(4) primary key not null,
artista varchar(30) not null,
data_spettacolo date not null,
citta varchar (40) not null,
luogo varchar(40) not null,
prezzo decimal (6,2) not null,
pt_disponibili smallint not null
);

insert into spettacoli values
("SP01","Salmo","2023-09-13","Torino", "PalaAlpitour", "45.00", 150),
("SP02","Green Day","2023-04-12","Milano", "San Siro", "80.00", 160),
("SP03","Salmo","2023-09-22","Torino", "PalaAlpitour", "45.00", 180),
("SP04","Coez","2023-03-13","Napoli", "Palazzetto", "40.00", 100),
("SP05","Lana Del Rey","2023-08-13","Torino", "PalaAlpitour", "80.00", 10),
("SP06","Gazzelle","2024-04-20","Torino", "PalaAlpitour", "40.00", 10),
("SP07","Gazzelle","2024-04-21","Torino", "PalaAlpitour", "40.00", 20),
("SP08","Sum41","2023-09-21","Varese", "Palazzetto", "48.00", 10),
("SP09","Finley","2024-08-20","Legnano", "Circolone", "30.00", 150),
("SP10","Billie Eilish","2024-10-20","Roma", "Circo Massimo", "80.00", 150),
("SP11","Alessandro Solidoro","2024-08-20","Torino", "Hiroshima Mon Amour", "20.00", 10),
("SP12","Finley","2024-08-20","Legnano", "Circolone", "30.00", 150);

create table if not exists clienti(
nome varchar(20) not null,
cognome varchar (20) not null,
cod_cliente char(4) primary key not null
);

insert into clienti (nome, cognome,cod_cliente)
values
("Chiara","Zaccone","CL01"),
("Marco","Pedretti","CL02"),
("Carmine","Ruggiero","CL03"),
("Alessandro","Borghi","CL04"),
("Alessandro","Solidoro","CL05"),
("Laura","Zaccone","CL06"),
("Elisabetta","Penna","CL07"),
("Eugenio","Aloi","CL08"),
("Gabriele","Sucato","CL09");