--1-quantos filme há em português?
select count(*) from film f
inner join "language" l 
on l.language_id = f.language_id 
where l.'name' = 'português';

--2-quantos clientes alugaram o filme de id=?
select count(*) from customer c
inner join "rental"  r 
on r.customer_id = c.customer_id
inner join "inventory" i
on r.inventory_id = i.inventory_id 
inner join "film" f 
on i.film_id = f.film_id 
where f.film_id = 7;

--3-quantos alugueis foram feitos no total?
SELECT COUNT(*) FROM rental;

--4- qual foi o custo do filme de id=600?
select title, replacement_cost from film where film_id = 600;

--5-Qual funcionário alugou mais filmes?
select
	s.first_name,
	s.last_name,
	count(r.rental_id)
from
	staff s
inner join rental r on
	s.staff_id = r.staff_id
group by
	s.first_name,
	s.last_name
order by
	count(r.rental_id) desc
limit 1;

--6-quantos funcionarios tem em cada loja?
select store_id, count(*) from staff group by store_id;

--nome da loja
select
	a.address,
	count(*)
from
	staff sta
inner join store sto 
on sta.store_id = sto.store_id
inner join address a on
	a.address_id  = sto.address_id 
group by
	a.address;
--7- liste as seguintes colunas:título do filme,idioma,custo,data do ultimo aluguel,
--nome do cliente do último aluguel,funcionário qie alugou,loja do alugeul e preço do aluguel







