create database maria2_bolsas;

create table endereco(
	id serial primary key,
	cep char(8) not null,
	rua varchar(50),
	numero char (6) not null,
	ponto_referencia varchar(50),
	bairro varchar(50) not null,
	cidade varchar(50) not null,
	uf char(2) not null,
	pais varchar(50) ,
	entrega boolean,
	destinatario varchar(50) not null 
);

create table usuario(
	id serial primary key,
	nome varchar(30) not null,
	cpf char(11) not null unique,
	celular char(8) not null,
	email varchar(30) not null,
	genero varchar(30),
	data_nascimento date,
	endereco_id int, foreign key (endereco_id) references endereco(id)
);

create table produto(
	id serial primary key,
	nome varchar(50) not null,
	descricao text,
	peso float not null,
	medida varchar(50) not null,
	valor int not null
);

create table pedido(
	id serial primary key,
	quantidade int,
	cor varchar(50),
	taxa_entrega int,
	produto_id int, foreign key (produto_id) references produto(id),
	endereco_id int, foreign key (endereco_id) references endereco(id)
);

create table cartao(
	id serial primary key,
	numero int not null unique,
	validade date not null,
	senha varchar(6) not null unique,
	nome_cartao varchar(60)
);

create table pix(
	id serial primary key,
	cod varchar (20) not null
) ;

create table boleto(
	id serial primary key,
	cod varchar (60) not null
) ;

create table pagamento(
	id serial primary key,
	cartao_id int, foreign key (cartao_id) references cartao(id),
	pix_id int, foreign key (pix_id) references pix(id),
	boleto_id int, foreign key (boleto_id) references boleto(id),
	pedido_id int, foreign key (pedido_id) references pedido(id)
);


create table categoria(
	id serial primary key,
	nome varchar(50),
	pedido_id int, foreign key (pedido_id) references pedido(id)
);

create table status(
	id serial primary key,
	status varchar(50),
	pedido_id int, foreign key (pedido_id) references pedido(id)
);
 
create table estoque(
	id serial lprimary key,
	quantidade int not null,
	cor varchar (50) not null,
	produto_id int, foreign key (produto_id) references produto(id)
);
