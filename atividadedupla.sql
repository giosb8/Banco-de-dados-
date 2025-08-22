create database laisautora;

create table usuario(
	id serial primary key,
	nome varchar(30) not null,
	email varchar(30) not null,
	senha varchar(20) not null,
	cpf char(11) not null unique,
	foto bytea,
	apelido varchar(15),
	data_nascimento date not null,
	raca varchar(15),
	celular char(9) not null,
	sobre text
);

create table endereco(
	id serial primary key,
	logradouro varchar(100) not null,
	localidade varchar(100) not null,
	uf char(2) not null,
	cep char(8) not null,
	bairro varchar(100) not null,
	numero char(6) not null
);

create table pedido(
	id serial primary key,
	valor numeric(10,2),
	nome varchar(60)
);

create table loja(
	id serial primary key,
	nome varchar(50) not null unique,
	
);

create table produto(
	id serial primary key,
	nome varchar(50) not null unique, 
	descricao text
);

create table pagamento(
	id serial primary key,
	valor decimal(10,2),
	data_pagamento date,
	descricao text,
	
);

create table texto(
	id serial primary key,
	noticias text
);

create table carrinho(
	id serial primary key,
	
);

--usuario

 alter table usuario 
add constraint fk_usuario
foreign key
(usuario_id)
references usuario(usuario_id);

	alter table endereco 
add constraint fk_endereco 
foreign key 
(endereco_id) 
references endereco(endereco_id);
--pedido	

	alter table usuario_id int,
	foreign key (usuario_id) references usuario_id,
	endereco_id int,
	foreign key (endereco_id) references endereco_id;
	
--loja

	pedido_id int,
	foreign key (pedido_id) references pedido_id;

	
--produto
loja_id int,
	foreign key loja(id) references loja_id;
	
--pagamento
	cliente_id int,
	foreign key (cliente_id) references cliente_id,
	loja_id int,
	foreign key (loja_id) references loja_id;
	
--carrinho
	produto_id int,
	foreign key produto(id) references produto_id;


	
	

create table cupom (

)
