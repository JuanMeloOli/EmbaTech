create database sprint1;
use sprint1;

create table login (
idLogin int primary key auto_increment,
Nome varchar (45) not null,
Sobrenome varchar (45), 
email varchar (45) not null unique, 
telefone varchar (45) not null unique, 
senha varchar (45) not null,
ConfirmarSenha varchar (45) not null
);

insert into login values 
(null, 'Felipe', 'Janazi', 'abcd@gmail.com', null, '#Gf123', '#Gf123');

insert into login values 
(null, 'Felipe', 'Janazi', 'abcd@gmail.com', '11 12345-6789', '#Gf123', '#Gf123');

select * from login;

create table maquina (
 idMaquina int primary key auto_increment,
 Nome varchar (45) not null, 
 Material varchar (45) not null, 
 Temperatura float not null, 
 Horario timestamp
 );
 
 insert into maquina values 
 (null, 'Máquina de infusão', 'Propileno PP', 35.3, null);
 
 select * from maquina;
 
 create table arduino ( 
 idSensor int primary key auto_increment,
 Nome varchar(45) not null unique, 
 TemperaturaMAX float not null, 
 TemperaturaMIN float not null,
 Horario timestamp 
 );
 
 insert into arduino values 
 (null, 'LMH35', 20.7, 30.5, null);
 
 select * from arduino;
 