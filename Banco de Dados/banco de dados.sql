create database sprint1;
use sprint1;

create table login (
idLogin int primary key auto_increment,
Nome varchar (45) not null,
Sobrenome varchar (45), 
email varchar (45) not null unique constraint chkEmail check (email like ('%@%')), 
telefone varchar (45) not null unique, 
senha varchar (45) not null,
ConfirmarSenha varchar (45) not null,
Chave varchar (45) not null unique
);
-- 
insert into login values 
(null, 'Felipe', 'Janazi', 'felipe@gmail.com', '11 12345-6789', '#Gf123', '#Gf123', 'vesbcunu'),
(null, 'Lucas', 'Carminatti', 'lucas@gmail.com', '11 12343-5324', 'uef', 'uef', 'HUgy7gw6'),
(null, 'Matheus', 'Shinkiti', 'matheus@gmail.com', '11 11111-8271', 'fel', 'fel', 'bjsnv'), 
(null, 'Matheus', 'Souza', 'souza@gmail.com', '11 83523-1234', 'fuuuq', 'fuuuq', 'hgi9823'),
(null, 'Yuri', 'Martins', 'yuri@gmail.com', '11 32145-9876', 'yuu', 'yuu', 'ienvi032'),
(null, 'Antônio', 'Felipe', 'antonio@mail.com', '11 54321-5678', 'lmk', 'lmk', 'cvkj9d*&'),
(null, 'Juan', 'Melo', 'juan@gmail.com', '11 76543-9876', 'juan', 'juan', 'inf8382399*&¨');

select * from login;

select * from login where nome like 'M%';

select * from login where telefone like '%8%';

create table maquina (
 idMaquina int primary key auto_increment,
 Nome varchar (45) not null, 
 Material varchar (45) not null, 
 Temperatura float not null, 
 Horario timestamp
 );
 insert into maquina values 
 (null, 'Máquina de infusão', 'Propileno PP', 60, default),
 (null,  'Máquina de infusão', 'Pom', 92.5, default),
 (null,  'Máquina de infusão', 'Polietileno de alta densidade', 72.5, default),
 (null,  'Máquina de infusão', 'Policarbonato', 95, default),
 (null,  'Máquina de infusão', 'Tereftalato de Polibutileno', 50, default),
 (null,  'Máquina de infusão', 'PA6 Poliamida ou Nylon 6', 85, default),
 (null,  'Máquina de infusão', 'PA12 Poliamida ou Nylon 12', 95, default),
 (null,  'Máquina de infusão', 'PA66 ou Nylon 66', 100, default);
 
 select * from maquina;
 
 select * from maquina order by material; 
 
 select material, temperatura from maquina;
 
 create table arduino ( 
 idSensor int primary key auto_increment,
 Material varchar(45) not null unique, 
 TemperaturaMAX float not null, 
 TemperaturaMIN float not null,
 Horario timestamp 
 );
 
insert into arduino values 
(null, 'Propileno PP', 80, 40, default),
(null, 'Pom', 105, 80, default),
(null, 'Polietileno de alta densidade', 95, 50, default),
(null, 'Policarbonato', 120, 70, default),
(null, 'Tereftalato de Polibutileno', 60, 40, default),
(null, 'PA6 Poliamida ou Nylon 6', 90, 80, default),
(null, 'PA12 Poliamida ou Nylon 12', 100, 90, default),
(null, 'PA66 ou Nylon 66', 120, 80, default);

select * from arduino;

select material, temperaturaMAX from arduino where TemperaturaMAX > 100;

select concat ('O material', ' ', Material, ' ',  'possui temperatura máxima de', ' ', TemperaturaMAX, 'C ', 'e temperatura mínima de', ' ', TemperaturaMIN, 'C') as 'Temperaturas dos materiais' from arduino;
-- nu