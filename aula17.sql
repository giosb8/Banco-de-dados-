create database aula17; 

create table categoria(
	categoria_id serial,
	nome varchar(80),
	ultima_atualizacao timestamp
);

create table filme_categoria(
	filme_id int,
	categoria_id int,
	ultima_atualizacao timestamp
);

create table film (
	filme_id serial,
	title varchar(100),
	descricao text,
	data_lancamento time,
	idioma varchar (30),
	duracao_aluguel
)