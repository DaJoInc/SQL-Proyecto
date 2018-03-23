--Asignacion clave primaria de id_usuario de la tabla Personas
alter table "OW_TST_US"."Personas"
add constraint PK_Personas primary key("id_usuario");

--Asignacion de clave primaria nickname  de la tabla Usuarios

alter table "OW_TST_US"."Usuarios"
add constraint PK_Usuarios primary key("nickname");


--Asignacion de clave primaria id de la tabla de TipoUsuario

alter table "OW_TST_US"."TipoUsuario"
add constraint PK_TipoUsuario primary key("id");


--Asignacion clave primaria de idde la tabla TipoPagina

alter table "OW_TST_US"."TipoPagina"
add constraint PK_TipoPagina primary key("id");

--Asignacion de clave primaria id 

alter table "OW_TST_US"."Pagina"
add constraint PK_Pagina primary key("id");


--Asignacion clave primaria de id de la tabla Estados

alter table "OW_TST_US"."Estado"
add constraint PK_Estado primary key("id");

---------------------------------------------------------------

