create database projeto_individual;

use projeto_individual;

create table usuario (
	idUsuario int primary key auto_increment,
    email varchar (90),
	nomeUsuario varchar (90),
	sobrenomeUsuario varchar (90),
	senha varchar (80),
	estado char (2),
    cidade varchar (60),
    tel_celular char (15),
	tipoAssinatura char (1)
) auto_increment = 101;

desc usuario;

insert into usuario values 
	(null, '', '', '', '', '', '', '', ''),
    (null, '', '', '', '', '', '', '', '');
    
select * from usuario;