create database votacao2;

use votacao2;

CREATE TABLE candidatos (
	num_cand int(11) not null primary key,
	nome varchar(35) not null,
	voto int(11) not null,
	partido varchar(35) not null);
    
insert into candidatos values
(7, 'Ana Hickman', 0, 'RECORDE'),
(17, 'Fausto Silva', 0, 'DOMINGÃO'),
(18, 'Ana Maria Braga', 0, '+VC'),
(45, 'Patricia Abravanel', 0, 'RR'),
(0, 'BRANCO', 0, '0');


create table uf(
	id_uf int (2) primary key not null,
    nome varchar (45) not null);
    
insert into uf values
(1, 'São Paulo'),
(2, 'Rio de Janeiro'),
(3, 'Minas Gerais'),
(4, 'Espirito Santo');    
    
create table munic(
	id_munic int (5) primary key not null,
    nome varchar (100) not null,
    id_uf int (2) references id_uf(uf));
    
insert into munic values
(1, 'São José dos Campos', 1),
(2, 'Trindade', 2),
(3, 'Cristina', 3);

create table zona(
	id_zona int (5) primary key not null,
    nome varchar (3) not null);
    
insert into zona values
(1, '001');

 create table secao(
	id_zona int (5) primary key not null,
    nome varchar (4) not null);   
    
insert into secao values
(1, '0001');

CREATE TABLE usuario (
	num_titulo varchar(12) not null primary key,
	dta_emis date not null,
	zona varchar(3) default null references nome(zona),
	secao varchar(4) default null references nome(secao),
	nome varchar(100) not null,
	dta_nasc date not null,
	nivel int(1) default null,
	senha varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci not null);
    
insert into usuario values
('111111', '1991-01-15', '001', '0001', 'Ednaldo Augusto', '1985-03-03', 1, '111111') ,   
('teste', '0000-00-00', '001', '0001', 'teste', '0000-00-00', 1, 'teste') ,   
('222222', '1998-02-27', '001', '0001', 'Pedro Gustavo', '1992-12-14', 2, '222222') ,   
('333333', '2018-06-15', '001', '0001', 'Leticia Clerk', '1999-07-18', 3, '333333');   

CREATE TABLE autorizacao (
	auten varchar(50) NOT NULL,
    `user` varchar(10) NOT NULL,
    auten_por varchar(10) NOT NULL,
    dta date DEFAULT NULL,
    can_vote enum('Y','N') DEFAULT 'N',
    already_voted enum('Y','N') DEFAULT 'N',
    PRIMARY KEY (auten),
    KEY `user` (`user`),
    KEY `auten_por` (`auten_por`),
  CONSTRAINT `autorizacao_ibfk_1` FOREIGN KEY (`user`) REFERENCES `usuario` (`num_titulo`),
  CONSTRAINT `autorizacao_ibfk_2` FOREIGN KEY (`auten_por`) REFERENCES `usuario` (`num_titulo`));
  
CREATE TABLE votos (
	id_voto int(5) not null auto_increment primary key,
	id_usu varchar(10) not null,
	id_cand int(4) not null,
	KEY id_cand (id_cand),
	CONSTRAINT `votos_ibfk_1` FOREIGN KEY (id_usu) REFERENCES usuario (num_titulo),
	CONSTRAINT `votos_ibfk_2` FOREIGN KEY (id_cand) REFERENCES candidatos (num_cand));
    
DELIMITER $
CREATE TRIGGER atualizaVotos 
AFTER INSERT ON votos 
FOR EACH ROW 
BEGIN
UPDATE candidatos
SET voto = voto + 1
WHERE num_cand = NEW.id_cand;
END$
  
  