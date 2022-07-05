-- creazione database
create database university;

-- start utilizzo database
use university;

-- creazione tabella studente
create table studente(
id int not null auto_increment,
matericola BIGINT not null,
nome varchar(50) not null,
cognome varchar(50) not null,
email varchar(50) not null,
ID_corsi_laurea BIGINT,
id_cdl INT not null,
PRIMARY KEY (id),
foreign key(id_cdl) references corso_laurea(id)

);

-- creazione tabella professore
create table professore(
id int not null auto_increment,
materia varchar(50) not null,
nome varchar(50) not null,
cognome varchar(50) not null,
email varchar(50) not null,
PRIMARY KEY (id)

);



-- creazione tabella ponte cdl - corsi
create table ponte_cdl(

	id_cdl INT NOT NULL,
	id_corsi INT NOT NULL,
	FOREIGN KEY (id_cdl) REFERENCES corso_laurea(id),
	FOREIGN KEY (id_corsi) REFERENCES corsi(id)
);



-- creazione tabella ponte corsi - insegnati
create table ponte_professore(

	id_corsi INT NOT NULL,
	id_professore INT NOT NULL,
	FOREIGN KEY (id_professore) REFERENCES professore(id),
	FOREIGN KEY (id_corsi) REFERENCES corsi(id)
);



-- modifica della tabella corsi di laurea
alter table corso_laurea  add column id_dipartimenti int;


-- creazione foreign key di dipartimenti in corso_laurea
alter table corso_laurea  add foreign key(id_dipartimenti) references dipartimenti(id);





-- aggiunta qualcosa nelle tabelle
INSERT INTO university.corsi
(CFU, nome_corso, ProfRiferimento)
VALUES(10, 'petrolio gne', 'daw daw');


-- stampare come sysout, visualizza quello che abbiamo in una tabella, il simbolo * visualizza tutto
select * from corsi;
