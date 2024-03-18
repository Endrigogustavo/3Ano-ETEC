create Database BdClinica;
use BdClinica;

CREATE TABLE Ambulatorios (
  Nroa Int,
  Andar Int Not Null,
  Capacidade Int,

  PRIMARY KEY (Nroa)
);

INSERT INTO Ambulatorios (Nroa, Andar, Capacidade) VALUES
(1, 1, 30),
(2, 1, 50),
(3, 2, 40),
(4, 2, 25),
(5, 2, 55);



CREATE TABLE Medicos (
  CodM Int,
  Nome Varchar(40) Not Null,
  Nascimento Date Not Null,
  Especialidade Varchar(20),
  CPF Varchar(14) UNIQUE,
  Cidade Varchar(30),
  Nroa Int,
  PRIMARY KEY (CodM),
  FOREIGN KEY (Nroa) REFERENCES Ambulatorios
);

INSERT INTO Medicos (CodM, Nome, Nascimento, Especialidade, CPF, Cidade, Nroa) VALUES
(1, 'João', '01/01/1980', 'ortopedia', 10000100000, 'Florianópolis', 1),
(2, 'Maria', '02/02/1981', 'traumatologia', 10000110000, 'Blumenau', 2),
(3, 'Pedro', '03/03/1982', 'pediatria', 11000100000, 'São José', 5),
(4, 'Carlos', '04/04/2000', 'ortopedia', 11000110000, 'Joinville', 4),
(5, 'Marcia', '03/05/1999', 'neurologia', 11000111000, 'Biguaçu', 3);


CREATE TABLE Pacientes (
  CodP Int,
  Nome Varchar(40) Not Null,
  Nascimento Date Not Null,
  Cidade Varchar(30),
  CPF Varchar(14) UNIQUE,
  Doenca Varchar(40) Not Null,

  PRIMARY KEY (CodP)
);

INSERT INTO Pacientes (CodP, Nome, Nascimento, cidade, CPF, Doenca) VALUES
(1, 'Ana', '02/02/1980', 'Florianópolis', 20000200000, 'gripe'),
(2, 'Paulo', '24/01/2000', 'Palhoça', 20000220000, 'fratura'),
(3, 'Lucia', '30/12/2001', 'Biguaçu', 22000200000, 'tendinite'),
(4, 'Carlos', '28/07/2005', 'Joinville', 11000110000, 'sarampo');



CREATE TABLE Funcionarios (
  CodF Int,
  Nome Varchar(40) Not Null,
  Nascimento Date,
  CPF Varchar(14) UNIQUE,
  Cidade Varchar(30),
  Salario float,
  Cargo Varchar(20),
  Nroa int,

  PRIMARY KEY (CodF),
  FOREIGN KEY (Nroa) REFERENCES Ambulatorios
);

INSERT INTO Funcionarios (CodF, Nome, Nascimento, Cidade, Salario, CPF, Cargo, Nroa) VALUES
(1, 'Rita', '31/12/2000', 'São José', 1200, 20000100000, 'Recepcionista', 5),
(2, 'Maria', '29/12/1999', 'Palhoça', 1220, 30000110000, 'Diretor', 2),
(3, 'Caio', '10/10/1980', 'Florianópolis', 1100, 41000100000, 'Enfermeiro', 4),
(4, 'Carlos', '09/08/2005', 'Florianópolis', 1200, 51000110000, 'Recpcionista', 3),
(5, 'Paula', '08/09/2006', 'Florianópolis', 2500, 61000111000, 'Enfermeiro', 5);


CREATE TABLE Consultas (
  CodM Int,
  CodP Int,
  Data Date,
  Hora Time,
  FOREIGN KEY (CodM) REFERENCES Medicos,
  FOREIGN KEY (CodP) REFERENCES Pacientes
);


INSERT INTO Consultas (CodM, CodP, Data, Hora) VALUES
(1, 1, '2006/06/12', '14:00'),
(1, 4, '2006/06/13', '10:00'),
(2, 1, '2006/06/13', '09:00'),
(2, 2, '2006/06/13', '11:00'),
(2, 3, '2006/06/14', '14:00'),
(2, 4, '2006/06/14', '17:00'),
(3, 1, '2006/06/19', '18:00'),
(3, 3, '2006/06/12', '10:00'),
(3, 4, '2006/06/19', '13:00'),
(4, 4, '2006/06/20', '13:00'),
(4, 4, '2006/06/22', '19:30');

Select * from Ambulatorios
Select * from Pacientes
Select * from Funcionarios
Select * from Consultas 
Select * from Medicos

Update Pacientes Set cidade = 'Ilhota' WHERE CodP=2;

Update Consultas Set Data='2006/07/04', Hora = '12:00' WHERE CodM=1 AND CodP=4;

Update Pacientes Set Doenca= 'gastrite' WHERE CodP=1;

Update Consultas Set Hora= '14:30' WHERE CodM=3 AND CodP=4;




Delete FROM Funcionarios WHERE CodF=4;

Delete FROM Consultas WHERE Hora >= '19:00';

DELETE FROM Consultas
WHERE CodP IN (SELECT CodP FROM Pacientes WHERE  Doenca = 'gastrite');
DELETE FROM Pacientes WHERE doenca='gastrite' OR Nascimento >= '2014-01-01';

Delete FROM Medicos WHERE cidade = 'Biguaçu' OR cidade = 'Palhoca';
