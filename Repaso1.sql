/*

Esquema relacional:
ciudadanos(codciudadano, nomciudadano, …)
deptos(coddepto, nomdepto)
profesorado(coddepto*, codprof, codciudadano*)
grupos(codgrupo, nomgrupo)
alumnado(codalum,codciudadano*, numexped,..., codgrupo*)
asignatura(codasigna,nomasigna,....)

impartir(codgrupo*, codasigna*, [coddepto, codprof]*, observaciones)



*/

drop database if exists repaso1;
CREATE DATABASE if not exists repaso1;
USE repaso1;

create table if not exists ciudadanos (
	
    codciudadno int unsigned,
    nombciudadano varchar(20),
    
    constraint pk_ciudadanos primary key (codciudadano)

);


create table if not exists deptos (
	
    coddepto int unsigned,
    nombdepto varchar(20),
    
    constraint pk_coddepto primary key (coddepto)

);

create table if not exists profesorado (
	
    coddepto int unsigned,
    codprof int unsigned,
    codciudadano int unsigned,
    
    constraint pk_coddepto primary key (coddepto , codprof),
    
    constraint fk_profesorado_deptos  foreign key (coddepto)
        references deptos(coddepto)
			on delete no action on update cascade,
        
	constraint fk_profesorado_ciudadanos  foreign key (codciudadano)
		references ciudadanos(codciudadano)
			on delete no action on update cascade

);

create table if not exists grupos (
	
    codgrupo int unsigned,
    nombgrupo varchar(20),
    
    constraint pk_codgrupo primary key (codgrupo)

);


create table if not exists alumnado (
	
    codalum int unsigned,
    codciudadano int unsigned,
    numexped int not null,
    codgrupo int unsigned,
    
    constraint pk_codalum primary key (codalum),
    
    constraint fk_alumnado_ciudadano  foreign key (codciudadano)
        references ciudadanos(codciudadano)
			on delete no action on update cascade,
        
	constraint fk_alumnado_grupos  foreign key (codgrupo)
		references grupos(codgrupo)
			on delete no action on update cascade

);


create table if not exists grupos (
	
    codasigna int unsigned,
    nombasigna varchar(20),
    
    constraint pk_codasigna primary key (codasigna)

);

create table if not exists impartir (
	
    codgrupo int unsigned,
    codasigna int unsigned,
    coddepto int unsigned,
    codprof int unsigned,
    observaciones varchar(100),
    
    
    constraint pk_codalum primary key (codalum),
    
    constraint fk_alumnado_ciudadano  foreign key (codciudadano)
        references ciudadanos(codciudadano)
			on delete no action on update cascade,
        
	constraint fk_alumnado_grupos  foreign key (codgrupo)
		references grupos(codgrupo)
			on delete no action on update cascade

);