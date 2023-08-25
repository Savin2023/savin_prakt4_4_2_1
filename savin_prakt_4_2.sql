CREATE DATABASE IF NOT EXISTS citizens;
USE citizens;
ALTER DATABASE citizens CHARACTER SET = utf8;

DROP TABLE IF EXISTS passport;
CREATE TABLE IF NOT EXISTS passport(id INT PRIMARY KEY NOT NULL,nomer INT NOT NULL,
serie VARCHAR(5) NOT NULL, pass_who VARCHAR(25) NOT NULL, pass_where DATE NOT NULL,
 kod_podr VARCHAR(7) NOT NULL,INDEX (id));

DROP TABLE IF EXISTS citizen;
CREATE TABLE IF NOT EXISTS citizen(id INT PRIMARY KEY NOT NULL,lastname VARCHAR(20) NOT NULL,
firstname VARCHAR(20) NOT NULL, middlename VARCHAR(20), birthday DATE NOT NULL,INDEX (id),
foreign key(id) references passport(id));

DROP TABLE IF EXISTS home;
CREATE TABLE IF NOT EXISTS home(id_home INT NOT NULL,address VARCHAR(50) NOT NULL,
id_owner INT PRIMARY KEY NOT NULL, INDEX (id_home,id_owner),foreign key(id_owner) references citizen(id));

DROP TABLE IF EXISTS pets;
CREATE TABLE IF NOT EXISTS pets(id_pet INT PRIMARY KEY NOT NULL,short_name VARCHAR(20) NOT NULL,
breed VARCHAR(20), breed_type VARCHAR(20),id_owner INT NOT NULL, INDEX (id_pet,id_owner),
foreign key(id_owner) references citizen(id));

