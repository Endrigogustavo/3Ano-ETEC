 create database BdColegio
 use BdColegio


create table Disciplinas( 

CodDisciplinas int,
NomeDisciplinas varchar(55) Not Null,

primary key CodDisciplinas 

) 

insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (11,'BD I');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (12,'TPA');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (13,'DS I');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (21,'BD II');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (22,'DS II');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (23,'PC I');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (31,'BD III');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (32,'PC II');
insert into Disciplinas(CodDisciplinas, NomeDisciplinas)
values (33,'DS III');








create table Cursos( 

CodCurso int identity ,
Nome varchar(55)  Not Null, 
CodDisc1 int,
CodDisc2 int,
CodDisc3 int,

primary key (CodCurso) ,
foreign key (CodDisc1) references Disciplinas
foreign key (CodDisc2) references Disciplinas
foreign key (CodDisc3) references Disciplinas

) 


insert into Cursos(Nome, CodDisc1 ,CodDisc2,CodDisc3)
values ('Auxiliar de Informatica',11,12,13);
insert into Cursos(Nome, CodDisc1 ,CodDisc2,CodDisc3)
values ('Programador',21,22,23);
insert into Cursos(Nome, CodDisc1 ,CodDisc2,CodDisc3)
values ('Tecnico de Infromatica',31,32,33);

create table Alunos( 

Matricula int identity, 
Nome varchar(55)  Not Null, 
Endereco varchar(105),
Cidade varchar(55), 
CodCurso int, 

primary key (Matricula) ,
foreign key (CodCurso) references Cursos

) 


insert into TblCursos(NomeCurso, CodProfessor)
values ('RH',4);

  

