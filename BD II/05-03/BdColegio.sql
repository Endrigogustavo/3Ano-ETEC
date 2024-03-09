 create database BdColegio
 use BdColegio


create table Disciplinas( 

CodDisciplinas int PRIMARY KEY,
NomeDisciplinas varchar(55) Not Null,

primary key (CodDisciplinas)

) 

select * from Disciplinas

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

CodCurso int identity PRIMARY KEY ,
Nome varchar(55)  Not Null, 
CodDisc1 int,
CodDisc2 int,
CodDisc3 int,

primary key (CodCurso) ,
foreign key (CodDisc1) references Disciplinas,
foreign key (CodDisc2) references Disciplinas,
foreign key (CodDisc3) references Disciplinas

) 

select * from Cursos


insert into Cursos(Nome, CodDisc1 ,CodDisc2,CodDisc3)
values ('Auxiliar de Informatica',11,12,13);
insert into Cursos(Nome, CodDisc1 ,CodDisc2,CodDisc3)
values ('Programador',21,22,23);
insert into Cursos(Nome, CodDisc1 ,CodDisc2,CodDisc3)
values ('Tecnico de Infromatica',31,32,33);

create table Alunos( 

Matricula int PRIMARY KEY, 
Nome varchar(55)  Not Null, 
Endereco varchar(105),
Cidade varchar(55), 
CodCurso int, 

primary key (Matricula) ,
foreign key (CodCurso) references Cursos

) 


insert into Alunos(Matricula, Nome, Endereco, Cidade, CodCurso)
values 
 (1001,'Marcos Moraes','Rua Pe Roque, 2057','Mogi Mirim',01),
 (1002,'Maria Conceição Lopes','Rua Araras, 23','Mogi Guaçu',01),
 (1003,'Ana Carina Lopes','Rua Peraltas, 222','Santos',01),
 (1004,'Carlos Aguiar','Rua Botafogo, 33','Santos',01),
 (1005,'André Luiz dos Santos','Rua Lopes Conte, 3343','Sapucaí',01),
 (1006,'Pedro Antonio Pimenta','Rua Altair Lopes, 33','Itapira',02),
 (1007,'Rita de Cássia da Silva','Rua Eletromais, 33','Itapira',02),
 (1008,'Caique dos Santos','Rua das Amoreiras, 55','Campinas',02),
 (1009,'Carlos Tavares','Rua Peixe, 99','Santos',02),
 (1010,'Antonio Carlos Caetano','Rua Josefina Alface, 987','Campinas',02),
 (1011,'Ricardo Moreira','Rua do Pinhal, 332','Aparecida',03),
 (1012,'Richardson S. P. Campeao','Rua do Tricolor, 433','São Paulo',03),
 (1013,'Junior Camisa Seis','Rua do Morumbi, 433','São Paulo',03),
 (1014,'Carina Melo','Rua Osvaldo Ramos, 88','Mogi Guaçu',03),
 (1015,'Pedro Mello','Rua Itororó, 3999','Mogi Mirim',03);

 select * from Alunos
