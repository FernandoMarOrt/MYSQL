create database if not exists BDCLASES; /*Si no existe el objeto BDCLASES me lo crea*/
use BDCLASES; /*ME COLOCO SOBRE LA BD QUE QUIERO UTILIZAR*/

create table if not exists deptos
(
	coddepto int unsigned not null, /* le digo que no sea nulo y que sea 0*/
    coddepto2 int unsigned, /* defino que es un int y con el unsigned ponga para asegurarme de que no sea negativo es decir le quita el signo*/
	/*CHAR(2) para variables que no sean variables y VARCHAR(2) para variables que si sean variables*/
    
    constraint pk_deptos primary key (coddepto) /*retrisccion  de primary key*/
    
    
);


create table if not exists profesorado
(
	coddepto int unsigned not null,
    codprof int unsigned not null, 
    feincorporacion date null,
    ape1 varchar(30) not null,
    ape2 varchar(30) null,
    codpostal char(5) null,
    telefono char(9) null,
	constraint pk_deptos primary key (coddepto , codprof),
    
     /*retrisccion  de primary key*/
    
    /*restriccion de clave foranea*/
    constraint fk_profesorado_deptos foreign key (coddepto) references deptos (coddepto)
		on delete no action on update cascade
    
);