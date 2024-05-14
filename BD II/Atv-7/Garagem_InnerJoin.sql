CREATE DATABASE BDGaragem
USE BDGaragem


Create table Patio(
	Patio_Num Int,
	Ender Varchar(60),
	Capacidade Int,
	PRIMARY KEY (Patio_Num)
);

Create table Modelo(
	CodMod Int,
	Desc_Mod Varchar(50),
	PRIMARY KEY (CodMod),
);

Create table Cliente(
	CPF Varchar(14),
	Nome Varchar(20),
	Nasc Date,
	PRIMARY KEY (CPF),
);

Create table Veiculo(
	CPF Varchar(14),
	CodMod Int,
	Placa Varchar(8),
	Cor Varchar(20),
	Ano Date,
	PRIMARY KEY (Placa),
	FOREIGN KEY (CodMod) REFERENCES Modelo,
	FOREIGN KEY (CPF) REFERENCES Cliente
);

Create table Estaciona(
	Cod Int,
	Patio_Num Int,
	Placa Varchar(8),
	DtEntrada Date,
	DtSaida Date,
	HsEntrada Time,
	HsSaida Time,
	PRIMARY KEY (Cod),
	FOREIGN KEY (Patio_Num) REFERENCES Patio,
	FOREIGN KEY (Placa) REFERENCES Veiculo
);




-- INNER JOIN EX1
SELECT Funcionarios.NomeFunc, Departamentos.NomeDepto, Funcionarios.Funcao
FROM Departamentos INNER JOIN Funcionarios 
ON Departamentos.Codigo_depto = Funcionarios.CodDepartamento

-- INNER JOIN EX2
SELECT Departamentos.NomeDepto, Funcionarios.NomeFunc
FROM Departamentos INNER JOIN Funcionarios
ON Departamentos.Codigo_depto = Funcionarios.CodDepartamento
WHERE Funcionarios.Funcao like 'Supervisor'

-- INNER JOIN EX3
SELECT Departamentos.NomeDepto, Funcionarios.NomeFunc, Funcionarios.SobreNome
FROM Departamentos INNER JOIN Funcionarios
ON Departamentos.Codigo_depto = Funcionarios.CodDepartamento
ORDER BY Departamentos.NomeDepto, Funcionarios.NomeFunc
