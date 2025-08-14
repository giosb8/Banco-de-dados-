create table vaga(
	id serial primary key,
	numero varchar(30) not null
);

create table carro(
	id serial primary key,
	marca varchar(30),
	modelo varchar(30),
	chassi char (8) not null unique,
	vaga_id int, foreign key (vaga_id) references vaga(id)
);


create table tempo(
	id serial primary key,
	data_hora_chegada date,
	data_hora_saida date,
	carro_id int,foreign key (carro_id) references carro(id),
	vaga_id int, foreign key (vaga_id)  references vaga (id)
);

insert into vaga(id,numero)
values (1,'5'),
	   (2,'4'),
	   (3,'3'),
	   (4,'2'),
	   (5,'1');
	  
insert into carro(id,marca,modelo,chassi,vaga_id)
values(1,'jeep','compass','12345678',2),
	  (2,'volkswagen', 'gol','12654789',4),
      (3,'ford','KA','32014569',3),
      (4,'fiat','uno','01236547',5),
      (5,'chevrolet','camaro','65423015',1);

insert into tempo(id,data_hora_chegada, data_hora_saida,carro_id,vaga_id)
values (1,'20/07/2025, 15:30','20/07/2025, 17:50',1,5),
	   (2,'28/07/2025, 16:30','29/07/2025, 8:50',2,4),
   	   (3,'08/07/2025, 14:30','08/07/2025, 17:40',3,3),
	   (4,'11/07/2025, 12:30','13/07/2025, 22:50',4,2),
	   (5,'26/07/2025, 08:00','26/07/2025, 17:45',5,1);
	  
	
