-- Para MySQL Workbench:

create database projeto_individual;

use projeto_individual;

-- drop database projeto_individual;

create table usuario (
	idUsuario int primary key auto_increment,
    email varchar (90),
	nome varchar (90),	
	senha varchar (80),
	estado char (2)
) auto_increment = 101;

desc usuario;
    
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

select * from nota;

