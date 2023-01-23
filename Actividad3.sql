/*

ACTIVIDAD 3
TABLON:
las mayusculas son las primeras , 2 mayusculas foranea

Categorias( Codcat, normal, prov)

Prodouctos(Refprod , COdcat, precio , .....)

Ventjas(Codventas , fechaventa , clientes)

Ln_ventas(Codventa , [efprod, codcat]*)   FORANEA DE 2 

contraint fk_prod_categorias foreign key (codcat)       PARA LAS CLAVES FORANEAS 

reference categorias(codcat)   HACE REFERENCIA A LA TABLA CATEGORIA AL CAMPO CODCAT 
	on delete no action on update cascade;        //SI ALGUIEN INTENTA BORRAR QUE NO LO DEJE PORQUE HAY DATOS RELACIONADOS  , EL CASCADE ES QUE SI BORRA PODRIA BORRARLO TODOS DE GOLPE
    

*/