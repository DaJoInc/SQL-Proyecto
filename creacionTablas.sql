--
CREATE TABLE "OW_TST_US"."Personas"
(
	"id_usuario"  		integer not null,
	"nombre"      		VARCHAR(255) not null,
	"apellidos"   		VARCHAR(255) not null,
	"documento"   		integer not null,
	"tipo_dpcumento" 	varchar(25) not null,
	"correo"     		VARCHAR(255) not null,
	"ano_nacimiento"  	date null,
	"telefono"    		integer not null
	
);

--

CREATE TABLE "OW_TST_US"."Usuarios"
(
	"nickname"     	 varchar(255) not null,
	"contrasena"   	 varchar(255) not null ,
	"id_usuario" 	 integer not null,
	"tipo_pagina"  	 integer null,
	"estado" 		 varchar(25) 
);

--

CREATE TABLE "OW_TST_US"."TipoUsuario"(
	"id"                  integer not null,
	"nombre_tipo_usuario"  varchar(255) not null ,
	"id_usuario" 	 integer not null
);


--

CREATE TABLE "OW_TST_US"."TipoPagina"(
	"id"                 integer not null,
	"nombre_tipo_pagina" varchar(255) not null 
);

--

CREATE TABLE "OW_TST_US"."Pagina"(
	"id"               integer not null,
	"nombre_pagina"    varchar(255) not null ,
	"tipo_pagina"      integer not null
);


--
CREATE TABLE "OW_TST_US"."Estado"
(
	"id"  				integer not null ,
	"nombre_estado"     VARCHAR(255) not null