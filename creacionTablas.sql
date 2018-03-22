--
CREATE TABLE Personas(
	id_usuario  	integer not null,
	nombre      	VARCHAR(255) not null,
	apellidos   	VARCHAR(255) not null,
	documento   	integer not null,
	tipo_dpcumento 	varchar(25) not null,
	correo     		VARCHAR(255) not null,
	ano_nacimiento  date null,
	telefono    	integer not null
	
);
COMMENT ON COLUMN "OW_TST_US"."Personas"."id_usuario" IS 'identifica con un numero unico al usuario';
COMMENT ON COLUMN "OW_TST_US"."Personas"."nombre" IS 'nombre de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."apellidos" IS 'apellidos de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."documento" IS 'documento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."tipo_dpcumento" IS 'Tipo de documento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."correo" IS 'correo de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."ano_nacimiento" IS 'año de nacimiento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."telefono" IS 'telefono de la persona del registro';
--

CREATE TABLE Usuarios(
	nickname     varchar(255) not null,
	contrasena   varchar(255) not null ,
	id_usuario 	 integer not null,
	tipo_usuario integer null,
	tipo_pagina  integer null,
	estado 		 varchar(25)
);
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."nickname" IS 'nombre de usuario unico de la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."contrasena" IS 'contrasena de usuario la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."tipo_usuario" IS 'identificador de tipo de usuario al que pertenece';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."tipo_pagina" IS 'identificador de tipo de pagina al que pertenece';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."id_usuario" IS 'identificador unigo de la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."estado" IS 'muestra el estado en el que se encuentra el usuario';
--

CREATE TABLE TipoUsuario(
	id                  integer not null,
	nombre_tipo_usuario varchar(255) not null 
);
COMMENT ON COLUMN "OW_TST_US"."TipoUsuario"."id" IS 'identificador unico del tipo de usuario';
COMMENT ON COLUMN "OW_TST_US"."TipoUsuario"."nombre_tipo_usuario" IS 'nombre del tipo de usuario ';
--

CREATE TABLE TipoPagina(
	id                 integer not null,
	nombre_tipo_pagina varchar(255) not null 
);
COMMENT ON COLUMN "OW_TST_US"."TipoPagina"."id" IS 'identificador unico del tipo de pagina';
COMMENT ON COLUMN "OW_TST_US"."TipoPagina"."nombre_tipo_pagina" IS 'nombre del tipo de pagina ';
--

CREATE TABLE Pagina(
	id               integer not null,
	nombre_pagina varchar(255) not null ,
	tipo_pagina      integer not null
);
COMMENT ON COLUMN "OW_TST_US"."Pagina"."id" IS 'identificador unico de pagina';
COMMENT ON COLUMN "OW_TST_US"."Pagina"."nombre_tipo_pagina" IS 'nombre de aignado a una pagina ';
COMMENT ON COLUMN "OW_TST_US"."Pagina"."tipo_pagina" IS 'identificador de tipo de pagina al que pertenece';