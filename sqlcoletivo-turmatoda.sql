create database teste2;

create table teste(
	id serial primary key,
	data date,
	numero int,
	n2 numeric(5,2),
	data_hora timestamp,
	letras char(10),
	letras2 varchar(100),
	texto text
);

alter table teste alter column numero set data type float;

insert into teste(data, numero, n2, data_hora ,letras,letras2,texto)
values('2025-08-23', 1.300, 999.99, '2025-08-23 10:30:00','botafogooo', 'Botafogo GIGANTE', 'BOTAFOGO>times do Brasil');

alter table teste alter column numero set not null;

alter table teste alter column letras set not null;

l