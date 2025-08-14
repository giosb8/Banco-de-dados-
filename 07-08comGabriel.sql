create database CentralTec;
create table funcionario(
	id serial primary key,
	nome varchar (50) not null,
	cpf char(11) not null unique,
	telefone char(9) not null
);

create table cargo(
	cargo_id serial primary key,
	nome varchar(50) not null,
	descricao text
	
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

create table produto(
	id serial primary key,
	valor int not null,
	nome varchar(60)
);

create table dadosempresa(
	id serial primary key,
	razao_social varchar(100) not null,
	CNPJ char(14) not null unique,
	endereco_id int, foreign key (endereco_id) references endereco(id)
);

create table cliente(
	id serial primary key,
	nome varchar(50) not null,
	cpf char(11) not null unique,
	endereco_id int, foreign key (endereco_id) references endereco(id),
	telefone char(9) not null,
	dadosempresa_id int, foreign key (dadosempresa_id) references dadosempresa(id)
	
);
	
create table projeto(
	id serial primary key,
	nome varchar(100) not null,
	descricao text,
	cliente_id int, foreign key (cliente_id) references cliente(id),
	dadosempresa_id int, foreign key (dadosempresa_id) references dadosempresa(id),
	linguagem_id int, foreign key (linguagem_id) references linguagem(id),
	departamento_id int, foreign key (departamento_id)references departamento(id),
	data_inicio date,
	data_fim date,
	status varchar(30)
);


create table tarefa(
	id serial primary key,
	descricao text,
	projeto_id int, foreign key (projeto_id) references projeto(id),
	titulo varchar(100) not null,
	funcionario_id int, foreign key (funcionario_id)references funcionario(id),
	status varchar(30),
	prioridade varchar(20),
	data_criacao date
);

create table agenda(
	 id serial primary key,
	  data_saida date,
	 data_entrega date,
	 cliente_id int, foreign key (cliente_id) references cliente(id),
	 dadosempresa_id int, foreign key (dadosempresa_id) references dadosempresa(id)
);

create table pagamento(
	id serial primary key,
	cliente_id int, foreign key (cliente_id) references cliente(id),
	valor decimal(10,2),
	data_pagamento date,
	descricao text
);

create table servicos(
	id serial primary key,
	nome varchar(100) not null,
	descricao text,
	preci decimal(10,2),
	dadosempresa_id int references dadosempresa(id)
);

create table departamento(
	id serial primary key,
	descricao text
);

create table compra(
	id serial primary key,
	nome varchar(100),
	produto_id int references produto(id),
	quantidade int,
	data_compra date,
	empresa_id int references dadosempresa(id)
);

create table faturamento(
	id serial primary key,
	cliente_id int references cliente(id),
	projeto_id int references projeto(id),
	valor_total decimal(10,2),
	data_emissao date,
	data_vencimento date
);

create table linguagem(
	id serial primary key,
	nome varchar(50) not null,
	versao varchar(20)
);

create table manutencao(
	id serial primary key,
	cliente_id int,foreign key(cliente_id) references cliente(id),
	servicos_id int,foreign key (servicos_id) references servicos(id),
	valor_mensal decimal(10,2),
	data_inicio date,
	data_fim date
);