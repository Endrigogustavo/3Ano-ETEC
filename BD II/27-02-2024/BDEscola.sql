 create database BdEscola
 use BdEscola


create table TblAluno( 

CodAluno int identity,  
Nome varchar(55) Unique Not Null,
Endereco varchar(155) Unique Not Null,
Telefone varchar(13) Unique Not Null,
Nascimento varchar(10)  Not Null,
Pai varchar(55)  Not Null,
Mae varchar(55)  Not Null,
Responsavel varchar(55)  Not Null,

primary key (CodAluno) 

) 

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Danilo','Aricanduva', '1199999999', '2005' , 'valdir', 'meire', 'Danilo');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Nickolas','Rua Pereira Estéfano', '1199999991', '2007' , 'Julio Cesar', 'mae top', 'Giovani');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Alex','Avenida Governador José Malcher', '1199999992', '2005' , 'Arthur', 'Evelyn', 'Evelyn');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Endrigo','Praça da República 22', '1199999988', '2005' , 'Benjamin', 'Violet', 'Violet');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Pedro','Travessa da CDL', '1199999993', '2005' , 'Samuel', 'Eleanor', 'Eleanor');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Valentim','Avenida Rio Branco', '1199999994', '2004' , 'Elias', 'Hazel', 'Elias');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Mateo','Avenida Esbertalina Barbosa Damiani', '1199999995', '2005' , 'valdir', 'Charlotte', 'valdir');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Thor','QE 11 Área Especial C', '1199999996', '2005' , 'Walter', 'Alice', 'Alice');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Leo','Avenida Afonso Pena', '1199999997', '2005' , 'Leonard', 'Sophia', 'Sophia');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Zyan','Rua Serra de Bragança', '1199999998', '2007' , 'Ronaldo', 'Penelope', 'Ronaldo');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Bruno','Rua Cristiano Olsen', '1199999980', '2005' , 'Cleber', 'Stella', 'Stella');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Igor','Rua Arlindo Nogueira', '1199999981', '2007' , 'vanderley', 'Clara', 'Clara');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Enrico','Rua Tenente-Coronel Cardoso', '1199999982', '2006' , 'Pablo', 'Julia', 'Julia');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Otto','Rua da Imprensa', '1199999983', '2005' , 'Carlos', 'Ana', 'Carlos');

insert into TblAluno(Nome, Endereco, Telefone, Nascimento, Pai, Mae, Responsavel)
values ('Lucas','Praça da República', '1199999984', '2006' , 'Wellinton', 'Clara', 'Wellinton');


create table TblProfessor( 

CodProfessor int identity, 
Nome varchar(55)  Not Null, 
Endereco varchar(155)  Not Null,

primary key (CodProfessor) 

) 

insert into TblProfessor(Nome, Endereco)
values ('Marlon','Itaquera');

insert into TblProfessor(Nome, Endereco)
values ('Edna','Tatuapé');

insert into TblProfessor(Nome, Endereco)
values ('Carlos','Aricanduva');

insert into TblProfessor(Nome, Endereco)
values ('Rafael','Artur Alvim');

insert into TblProfessor(Nome, Endereco)
values ('Collado','Itaquera');

insert into TblProfessor(Nome, Endereco)
values ('Esmeralda','Consolação');

insert into TblProfessor(Nome, Endereco)
values ('Rogerio','Paraiso');

create table TblCursos( 

CodCurso int identity, 
NomeCurso varchar(25)  Not Null,  
CodProfessor int, 

primary key (CodCurso) ,
foreign key (CodProfessor) references TblProfessor 

) 


insert into TblCursos(NomeCurso, CodProfessor)
values ('DS',1);

insert into TblCursos(NomeCurso, CodProfessor)
values ('ADM',2);

insert into TblCursos(NomeCurso, CodProfessor)
values ('LOG',3);

insert into TblCursos(NomeCurso, CodProfessor)
values ('RH',4);

  



create table TblNotas( 

CodAluno int , 
CodCurso int , 
Nota int Not Null, 
Ano int Not Null, 
Bimestre int, 
Observacao varchar(100),
  
foreign key (CodAluno) references TblAluno,
foreign key (CodCurso) references TblCursos 
) 

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (1,1,10,2000,1,'nada');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (2,2,7,2002,1,'Melhore');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (3,3,9,2010,1,'nada');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (4,4,2,2000,1,'Foi de F');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (5,1,5,2000,1,'Vala');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (6,2,10,2000,1,'Fez o minimo');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (7,3,10,2000,1,'Fez o minimo');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (8,4,8,2000,1,'Melhore');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (9,1,7,2000,1,'Melhore');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (10,2,1,2000,1,'Te vejo no céu irmao');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (11,3,5,2000,1,'Melhore');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (12,4,6,2000,1,'Melhore');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (13,1,10,2000,1,'KKKKK');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (14,2,10,2000,1,'Colando é facil');

insert into TblNotas(CodAluno, CodCurso, Nota, Ano, Bimestre, Observacao)
values (15,3,10,2000,1,'GG izi');

SELECT *from TblAluno
SELECT *from TblCursos
SELECT *from TblNotas
SELECT *from TblProfessor
