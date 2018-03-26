--Asignacion clave primaria de id_usuario de la tabla Personas
alter table "OW_TST_US"."PERSONAS"
add constraint PK_Personas primary key("ID_USUARIO");

--Asignacion de clave primaria nickname  de la tabla Usuarios

alter table "OW_TST_US"."USUARIOS"
add constraint PK_Usuarios primary key("NICKNAME");


--Asignacion de clave primaria id de la tabla de TipoUsuario

alter table "OW_TST_US"."TIPOUSUARIO"
add constraint PK_TipoUsuario primary key("ID");


--Asignacion clave primaria de idde la tabla TipoPagina

alter table "OW_TST_US"."TIPOPAGINA"
add constraint PK_TipoPagina primary key("ID");

--Asignacion de clave primaria id 

alter table "OW_TST_US"."PAGINA"
add constraint PK_Pagina primary key("ID");


--Asignacion clave primaria de id de la tabla Estados

alter table "OW_TST_US"."ESTADO"
add constraint PK_Estado primary key("ID_ESTADO");

---------------------------------------------------------------

