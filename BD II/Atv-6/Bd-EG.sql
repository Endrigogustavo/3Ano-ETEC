CREATE DATABASE EG
USE EG

Create Table Pessoas(
	Id Int Identity,
	Nome Varchar(60),
	Email Varchar(60),
	Salario Float,
	Data_Nascimento Date,
	Cidade Varchar(60),
	Estado Varchar(2),
	PRIMARY KEY (Id)
);

insert into Pessoas(Nome, Email, Salario, Data_Nascimento, Cidade, Estado)
values 
 ('João','joao1970@gmail.com', 8000.00, '1970-05-20', 'São Paulo', 'SP'),
 ('Camila','camila@gmail.com', 3000.00, '1985-07-23', 'São Paulo', 'SP'),
 ('Marcio','marcio@gmail.com', 900.00, '1982-03-15', 'Campinas', 'SP'),
 ('Fernanda','fernanda@gmail.com', 3500.00, '1987-08-18', 'Rio de Janeiro', 'RJ'),
 ('José','jose@gmail.com', 2200.00, '1990-09-18', 'Guaxupé', 'MG'),
 ('Fabiano','fabiano@gmail.com', 6800.00, '1981-01-30', 'Poços de Caldas', 'MG'),
 ('Marcos','marcos@gmail.com', 3200.00, '1989-02-08', 'Vitória', 'ES')
 
 Select * From Pessoas

 -- Exercicos

 -- Codigo de criação de BD
 CREATE DATABASE EG

 -- Codigo de criação de tabelas
 Create Table NomeTabela(
 Campo1 varchar(1),
 Campo2 varchar(1),
 Campo3 varchar(1),
 );

 -- Codico de inserir dados
insert into NomeTabela(Campo1, Campo2, Campo3)
values 
('Campo1','Campo2','Campo3')

--Codigo de busca de todas as pessoas com nomes que começam com "A, E, I, O, U"
Select * from Pessoas 
where 
Nome like 'A%' 
and Nome like 'E%' 
and Nome like 'I' 
and Nome like 'O%' 
and Nome like 'U%'

-- Codigo para exibir Nome e Salario decrescente
Select Nome,Salario from Pessoas order by Salario desc;

-- Codigo para exibir Nomes em ordem alfabetica
Select Nome,Email from Pessoas order by Nome;

--Codigo para mostrar o salario mais alto
Select max(Salario) from Pessoas

--Codigo para mostrar a media dos salarios 
Select avg(Salario) from Pessoas

--Codigo para mostrar dados do usuario com id entre 3 e 7
Select Nome,Salario,Email from Pessoas where Id between 3 and 7
