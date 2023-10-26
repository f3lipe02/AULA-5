Create Database entregas_express;

use entregas_express;

Create Table paises(

id_pais int,
nome varchar(45),
latitude varchar (45),
longitude varchar(45),
idioma_oficial varchar(45)
);

Create Table unidades_federativas(
cod_uf int,
nome_uf varchar(45),
abreviacao_uf char(2),
id_pais int
);

Create Table municipios(
id_municipio int,
nome varchar(45),
cod_uf int
);

