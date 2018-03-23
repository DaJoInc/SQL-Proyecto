--Asignacion clave primaria de id_usuario y documento de la tabla Persona
alter table "OW_TST_US"."Personas"
add constraint PK_Personas primary key("id_usuario","documento");

--Asignacion de clave primaria nickname , claves foraneas de id_usuario y tipo_pagina de la tabla Usuarios

alter table "OW_TST_US"."Usuarios"
add constraint PK_Usuarios primary key("nickname");
alter table "OW_TST_US"."Usuarios"
add FOREIGN KEY ("tipo_pagina") REFERENCES "OW_TST_US"."TipoPagina"("id");
alter table "OW_TST_US"."Usuarios"
add FOREIGN KEY ("id_usuario") REFERENCES "OW_TST_US"."Personas"("id_usuario");

--Asignacion de clave primaria id , claves foraneas de id_usuario tabla TipoUsuarios

alter table "OW_TST_US"."TipoUsuario"
add constraint PK_TipoUsuario primary key("id");
alter table "OW_TST_US"."TipoUsuario"
add FOREIGN KEY ("id_usuario") REFERENCES "OW_TST_US"."Personas"("id_usuario");

--Asignacion clave primaria de idde la tabla TipoPagina

alter table "OW_TST_US"."TipoPagina"
add constraint PK_TipoPagina primary key("id");

--Asignacion de clave primaria id , clave foranea de tipo_pagina tabla Paginas

alter table "OW_TST_US"."Pagina"
add constraint PK_Pagina primary key("id");
alter table "OW_TST_US"."Pagina"
add FOREIGN KEY ("tipo_pagina") REFERENCES "OW_TST_US"."TipoPagina"("id");

--Asignacion clave primaria de id de la tabla Estados

alter table "OW_TST_US"."Estado"
add constraint PK_Estado primary key("id");