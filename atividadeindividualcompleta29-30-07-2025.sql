create database hotel;

create table funcionario(
	funcionario_id serial,
	nome varchar(50),
	cpf char(11),
	cargo_id int
);

create table cargo(
	cargo_id serial,
	nome varchar(50)
);

create table hospede(
	hospede_id serial,
	nome varchar(50),
	cpf char(11),
	endereco_id int
);

create table endereco(
	endereco_id serial,
	logradouro varchar (100),
	localidade varchar (100),
	uf char (2),
    cep char (8),
    bairro varchar (50),
    numero varchar (8)
   );
  
create table agenda(
	agenda_id serial,
	data_checkin date,
	data_checkout date,
	hospede_id int,
	funcionario_id int
   );
  
alter table funcionario add primary key (funcionario_id);
alter table cargo add primary key (cargo_id);
alter table hospede add primary key (hospede_id);
alter table endereco add primary key (endereco_id);
alter table agenda add primary key (agenda_id);

 alter table funcionario
add constraint fk_cargo
foreign key
(cargo_id)
references cargo(cargo_id);

 alter table hospede
add constraint fk_endereco
foreign key
(endereco_id)
references endereco(endereco_id);

 alter table agenda
add constraint fk_hospede
foreign key
(hospede_id)
references hospede(hospede_id);

 alter table agenda
add constraint fk_funcionario
foreign key
(funcionario_id)
references funcionario(funcionario_id);

  
insert into endereco(logradouro,localidade,uf,cep,bairro,numero)
values('Haroldo Mano', 'Petrópolis', 'RJ','25720045','Jardim Salvador','75'),
	('Pedro Vogel Sobrinho ','Petrópolis','RJ','25665260','Castrioto' ,'191'),
	('Francisco Frederico Maywormn ', 'Petrópolis', 'RJ','25675180', 'Mosela','98'),
	('João Moreira', 'Petrópolis', 'RJ','25650064', 'Dr. Thouzet','200'),
	('Mathias hillen', 'Petrópolis', 'RJ', '25670050', 'Mosela','276');

insert into cargo (nome)
values('Gerência geral' ),
	('Administração '),
	('Hospedagem (governança)'),
	('Recepção '),
	('Eventos e Recreação');

insert into funcionario (nome, cpf, cargo_id)
values ('Rafaella','06437953756','1'),
	('Giovana', '06566159746','2'),
	('Lara', '20318491745','3'),
	('Thalita','19486409706','4'),
	('Julia','16919352779','5' );

insert into hospede (nome, cpf, endereco_id)
values ('claudia' , '06437953730','1'),
	('gabrielle','06566159790','2'),
	('julia m','20318491778','3'),
	('ana clara','19486409760', '4'),
	('maria alice','16919352750','5' );

insert into agenda (data_checkin, data_checkout, hospede_id,funcionario_id)
values ('20/06/2025','23/06/2025',1,2),
	('15/07/2025','16/07/2025',2,1),
	('16/07/2025','17/07/2025',3,3),
	('20/07/2025','25/07/2025', 4,4),
	('20/07/2025','28/07/2025', 5,5);

select * from funcionario f ;

select * from endereco e where e.endereco_id = 3;

select  a.data_checkin, a.data_checkout from agenda a;

select * from hospede h;

select * from cargo c;


update funcionario f set cargo_id = 5  where funcionario_id =2;

UPDATE agenda
SET data_checkout  = '20/07/2025'
WHERE hospede_id ='2';

select * from agenda a ;

delete from endereco where logradouro = 'a%';

select * from endereco;

drop table agenda;

ALTER TABLE hospede 
ALTER COLUMN nome set NOT NULL;

ALTER TABLE hospede 
ALTER COLUMN cpf set NOT NULL;

ALTER TABLE hospede 
ALTER COLUMN endereco_id set NOT NULL;

ALTER TABLE cargo 
ALTER COLUMN nome set NOT NULL;

ALTER TABLE funcionario
ALTER COLUMN nome set NOT NULL;

ALTER TABLE funcionario
ALTER COLUMN cpf set NOT NULL;

ALTER TABLE funcionario
ALTER COLUMN cargo_id set NOT NULL;

ALTER TABLE endereco
ALTER COLUMN logradouro set NOT NULL;

ALTER TABLE endereco
ALTER COLUMN localidade set NOT NULL;

ALTER TABLE endereco
ALTER COLUMN cep set NOT NULL;

ALTER TABLE endereco
ALTER COLUMN numero set NOT NULL;

ALTER TABLE endereco
ALTER COLUMN bairro set NOT NULL;

ALTER TABLE endereco
ALTER COLUMN uf set NOT NULL;

ALTER TABLE agenda
ALTER COLUMN data_checkin set NOT NULL;

ALTER TABLE agenda
ALTER COLUMN data_checkout set NOT NULL;

ALTER TABLE agenda
ALTER COLUMN hospede_id set NOT NULL;

ALTER TABLE agenda
ALTER COLUMN funcionario_id set NOT NULL;

delete from hospede where cpf = '06566159746'


ALTER TABLE funcionario add unique (cpf);

ALTER TABLE hospede add unique (cpf);



