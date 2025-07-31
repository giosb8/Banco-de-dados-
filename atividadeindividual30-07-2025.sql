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
