create database sprint1;
use sprint1;

-- CRIAÇÃO DA TABELA LOGIN
create table login (
idLogin int primary key auto_increment,
usuario varchar (45) not null,
senha varchar (45) not null,
cpfCnpj varchar (45),
email varchar (45) not null unique constraint chkEmail check (email like ('%@%')), 
telefone varchar (45) not null unique, 
Chave varchar (45) not null unique
);

-- INSERINDO REGISTROS NA TABELA DE LOGIN
insert into login values 
(null, 'Felipe', '123@', '123.123.123-12', 'felipe@sptech', '11 12345-6789', '13tgt5@RF'),
(null, 'Lucas', 'sfwe!#', '11.111.111/1111-11', 'lucas@sptech', '11 11111-1111', 'BU28ujrfv'),
(null, 'Matheus', 't53f6', '111.111.111-11', 'matheus@wsptech', '22 22222-2222', '873fg7'),
(null, 'Matheus', 'iu6gv7', '222.222.222-22', 'shinkiti@sptech', '33 33333-3333', 'eg304g'),
(null, 'Yuri', 'b78bn', '33.333.333/3333-33', 'yuri@sptech', '44 44444-4444', 'fn83782'),
(null, 'Antônio', 'h7c6n7h3', '444.444.444-44', 'antonio@sptech', '55 55555-5555', '8n7v6ba'),
(null, 'Juan', 'nbuytv%F', '555.555.555-55', 'juan@sptech', '66 66666-6666', 'uyb69876');

-- SELECIONANDO TUDO 
select * from login;

-- SELECIONANDO USUARIOS QUE COMECEM COM M 
select * from login where usuario like 'M%';

-- SELECIONANDO TELEFONES QUE CONTENHAM O NUMERO 8
select * from login where telefone like '%8%';


-- CRIAÇÃO DA TABELA MAQUINA
create table maquina (
 idMaquina int primary key auto_increment,
 Nome varchar (45) not null, 
 Material varchar (45) not null, 
 Temperatura float not null, 
 Horario timestamp
 );
 
 -- INSERINDO DADOS
 insert into maquina values 
 (null, 'Máquina de infusão', 'Propileno PP', 60, default),
 (null,  'Máquina de infusão', 'Pom', 92.5, default),
 (null,  'Máquina de infusão', 'Polietileno de alta densidade', 72.5, default),
 (null,  'Máquina de infusão', 'Policarbonato', 95, default),
 (null,  'Máquina de infusão', 'Tereftalato de Polibutileno', 50, default),
 (null,  'Máquina de infusão', 'PA6 Poliamida ou Nylon 6', 85, default),
 (null,  'Máquina de infusão', 'PA12 Poliamida ou Nylon 12', 95, default),
 (null,  'Máquina de infusão', 'PA66 ou Nylon 66', 100, default);
 
 -- SELECIONANDO TUDO
 select * from maquina;
 
 -- SELECIONANDO TUDO ORDENANDO PELOS MATERIAIS CRESCENTE
 select * from maquina order by material; 
 
 -- SELECIONANDO SOMENTE MATERIAL E TEMPERATURA 
 select material, temperatura from maquina;
 
 
 -- CRIAÇÃO DA TABELA ARDUINO
 create table arduino ( 
 idSensor int primary key auto_increment,
 Material varchar(45) not null unique, 
 TemperaturaMAX float not null, 
 TemperaturaMIN float not null,
 Horario timestamp 
 );
 
 -- INSERINDO DADOS NA TABELA
insert into arduino values 
(null, 'Propileno PP', 80, 40, default),
(null, 'Pom', 105, 80, default),
(null, 'Polietileno de alta densidade', 95, 50, default),
(null, 'Policarbonato', 120, 70, default),
(null, 'Tereftalato de Polibutileno', 60, 40, default),
(null, 'PA6 Poliamida ou Nylon 6', 90, 80, default),
(null, 'PA12 Poliamida ou Nylon 12', 100, 90, default),
(null, 'PA66 ou Nylon 66', 120, 80, default);

-- SELECIONANDO TUDO 
select * from arduino;

-- SELECIONANDO O MATERIAL E A TEMPERATURA MAX SOMENTE DE TEMPERATURAS MAIORES QUE 100
select material, temperaturaMAX from arduino where TemperaturaMAX > 100;

-- REALIZANDO UMA CONCATENAÇÃO ENTRE MATERIAL E TEMPERATURAS, APRENSETANDO EM SOMENTE UMA FRASE 
select concat ('O material', ' ', Material, ' ',  'possui temperatura máxima de', ' ', TemperaturaMAX, 'C ', 'e temperatura mínima de', ' ', TemperaturaMIN, 'C') as 'Temperaturas dos materiais' from arduino;
