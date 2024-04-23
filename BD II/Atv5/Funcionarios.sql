CREATE DATABASE BdEmpresa
USE BdEmpresa

Create table Departamentos(
	Codigo_depto int,
	NomeDepto varchar(20),
	PRIMARY KEY (Codigo_depto)
);


Create table Funcionarios(
	Codigo_func Int,
	NomeFunc Varchar(55),
	SobreNome Varchar(55),
	DataNasci Date,
	CPF varchar(20),
	RG varchar(30),
	Endereco varchar(70),
	CEP varchar(10),
	Cidade varchar(20),
	Fone varchar(14),
	Funcao varchar(30),
	Salario Float,
	CodDepartamento int,

	  PRIMARY KEY (Codigo_func),
	  FOREIGN KEY (CodDepartamento) REFERENCES Departamentos
);


INSERT INTO Departamentos (Codigo_depto, NomeDepto) VALUES
(1, 'Logistica'),
(2, 'Administração'),
(3, 'Desenvolvimento');

INSERT INTO Funcionarios (Codigo_func, NomeFunc, SobreNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, Funcao, Salario, CodDepartamento) VALUES
(1, 'João', 'Silva', '1990-05-15', '123.456.789-00', '123456789', 'Rua A, 123', '12345-678', 'Cidade A', '123456789', 'Analista', 5000.00, 1),
(2, 'Maria', 'Santos', '1985-08-20', '987.654.321-00', '987654321', 'Rua B, 456', '98765-432', 'Cidade B', '987654321', 'Desenvolvedor', 6000.00, 2),
(3, 'Pedro', 'Oliveira', '1988-12-10', '111.222.333-44', '111222333', 'Rua C, 789', '54321-098', 'Cidade C', '111222333', 'Gerente', 8000.00, 1),
(4, 'Ana', 'Souza', '1995-03-25', '555.666.777-88', '555666777', 'Rua D, 321', '13579-246', 'Cidade A', '555666777', 'Analista', 5000.00, 3),
(5, 'Carlos', 'Ferreira', '1992-07-30', '999.888.777-66', '999888777', 'Rua E, 654', '98765-123', 'Cidade B', '999888777', 'Desenvolvedor', 6000.00, 2),
(6, 'Juliana', 'Martins', '1980-11-05', '444.333.222-11', '444333222', 'Rua F, 987', '24680-135', 'Cidade C', '444333222', 'Gerente', 8000.00, 3),
(7, 'Lucas', 'Rodrigues', '1993-09-18', '777.888.999-00', '777888999', 'Rua G, 321', '54321-678', 'Cidade A', '777888999', 'Analista', 5000.00, 1),
(8, 'Fernanda', 'Almeida', '1982-04-12', '222.333.444-55', '222333444', 'Rua H, 456', '98765-432', 'Cidade B', '222333444', 'Desenvolvedor', 6000.00, 2),
(9, 'Rafael', 'Gomes', '1991-06-28', '666.555.444-33', '666555444', 'Rua I, 789', '24680-135', 'Cidade C', '666555444', 'Gerente', 8000.00, 3),
(10, 'Patrícia', 'Pereira', '1987-02-14', '333.444.555-66', '333444555', 'Rua J, 123', '13579-246', 'Cidade A', '333444555', 'Analista', 5000.00, 1);

--Select's Base
Select * from Departamentos;
Select * from Funcionarios;

--Exercicio 1
Select NomeFunc, Sobrenome from Funcionarios order by Sobrenome;

--Exercicio 2
Select * from Funcionarios order by Cidade;

--Exercicio 3
Select * from Funcionarios where Salario>1000 order by NomeFunc;

--Exercicio 4
Select Datanasci, NomeFunc from Funcionarios order by Datanasci desc;

--Exercicio 5
Select Sobrenome, NomeFunc, Cidade, Endereco, Fone from Funcionarios;

--Exercicio 6
Select sum(salario) from Funcionarios;

--Exercicio 7
Select NomeFunc, Salario, Funcao from Funcionarios order by Funcao;

--Exercicio 8
-- Supervisos = Desenvolvedor
Select * from Funcionarios where Funcao like 'Desenvolvedor'

--Exercicio 9
select count(Codigo_func) from Funcionarios;

--Exercicio 10
Select avg(Salario) from Funcionarios;

--Exercicio 11
Select NomeFunc from Funcionarios where Cidade like 'Cidade A' and Funcao like 'Analista';

