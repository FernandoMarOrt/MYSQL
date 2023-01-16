create database if not exists Actividad2;
use Actividad2;

create table if not exists profesores (
	
    numprof INT NOT NULL,
    despacho VARCHAR(30) NULL,
    fecnacim DATE NULL,
    fecingreso DATE NULL,
    sueldo DECIMAL (12,2) NULL,
    nomprof VARCHAR(60) NULL,
    
    constraint profesores primary key(numprof)

);

create table if not exists deptos (
	
    numdepto INT NOT NULL,
    presupuesto DECIMAL (12,2) NULL,
    nomdepto VARCHAR(60) NULL,
    ubicacion VARCHAR(30) NULL,

	constraint deptos primary key(numdepto)
	
);

create table if not exists asignaturas (
	
    numasigna INT NOT NULL,
    nomasigna VARCHAR (60) NULL,
    curso VARCHAR(30) NULL,
    
    constraint asignaturas primary key (numasigna)

);