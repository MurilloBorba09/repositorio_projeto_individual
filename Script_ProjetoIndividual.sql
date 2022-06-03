create database projeto_individual;

use projeto_individual;

-- drop database projeto_individual;

create table usuario (
	idUsuario int primary key auto_increment,
    email varchar (90),
	nome varchar (90),
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