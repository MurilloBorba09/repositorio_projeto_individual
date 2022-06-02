-- Para MySQL Workbench:

create database projeto_individual;

use projeto_individual;

-- drop database projeto_individual;

create table usuario (
	idUsuario int primary key auto_increment,
    email varchar (90),
	nomeUsuario varchar (90),	
	senha varchar (80),
	estado char (2),
    cidade varchar (60),
    tel_celular char (15),
	tipoAssinatura char (1)
) auto_increment = 101;

desc usuario;

insert into usuario values 
	(null, '', '', '', '', '', '', '', ''),
	(null, '', '', '', '', '', '', '', ''),
    (null, '', '', '', '', '', '', '', '');
    
select * from usuario;

create table nota (
	idNota int auto_increment,
	notaSite varchar (2),
	opiniaoSite varchar (500),
	notaMateria varchar (2),
	fkUsuario int,
	foreign key (fkUsuario) references usuario(idUsuario)
	primary key (idNota, fkUsuario)
);

desc usuario;

insert into nota values 
	(null, '', '', '', ),
	(null, '', '', '', ),
	(null, '', '', '', ),
	(null, '', '', '', ),
	(null, '', '', '', ),
	(null, '', '', '', );

select * from nota;

/* para sql server - remoto - produção */
CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
);