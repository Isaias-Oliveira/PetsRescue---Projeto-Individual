-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE PetsRescue;

USE PetsRescue;

CREATE TABLE Usuário (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(60),
	email VARCHAR(60),
	senha VARCHAR(20),
);

/* em nossa regra de negócio, um aquario tem apenas um sensor */
create table Dashboard(
id int primary key,
dados int,
fkUsuário int,
foreign key (fkUsuário) references Usuário (id)
);

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */
CREATE TABLE Quiz(
id int primary key,
perguntas varchar(100),
respostas varchar(50),
fkUsuário int,
foreign key (fkUsuário) references Usuário (id)
);

INSERT INTO Usuário (nome, email, senha) VALUES ('Marcia Maria', 'marcia.maria@example.com', '123');

select * from Usuário;