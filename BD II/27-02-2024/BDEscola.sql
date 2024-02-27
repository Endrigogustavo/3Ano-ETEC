 create database BdEscola1
 use BdEscola1


create table TblAluno( 

CodAluno int identity,  
Nome varchar(55) Unique Not Null,
Endereco varchar(155) Unique Not Null,
Telefone varchar(13) Unique Not Null,
Nascimento varchar(10) Unique Not Null,
Pai varchar(55) Unique Not Null,
Mae varchar(55) Unique Not Null,
Responsavel varchar(55) Unique Not Null,

primary key (CodAluno) 

) 

create table TblProfessor( 

CodProfessor int identity, 
Nome varchar(55)  Not Null, 
Endereco varchar(155)  Not Null,

primary key (CodProfessor) 

) 


create table TblCursos( 

CodCurso int identity, 
NomeCurso varchar(25)  Not Null,  
CodProfessor int, 

primary key (CodCurso) ,
foreign key (CodProfessor) references TblProfessor 

) 


  



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

