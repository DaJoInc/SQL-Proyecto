--Comentarios tabla PERSONAS
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."ID_USUARIO"     IS 'identifica con un numero unico al usuario';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."NOMBRE" 	      IS 'nombre de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."APELLIDOS"      IS 'apellidos de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."DOCUMENTO"      IS 'documento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."TIPO_DOCUMENTO" IS 'Tipo de documento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."CORREO" 		  IS 'correo de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."ANO_NACIMIENTO" IS 'año de nacimiento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."PERSONAS"."TELEFONO"       IS 'telefono de la persona del registro';

--Comentarios tabla Usuarios

COMMENT ON COLUMN "OW_TST_US"."USUARIOS"."NICKNAME"     IS 'nombre de usuario unico de la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."USUARIOS"."CONTRASENA"   IS 'contrasena de usuario la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."USUARIOS"."TIPO_PAGINA"  IS 'identificador de tipo de pagina al que pertenece';
COMMENT ON COLUMN "OW_TST_US"."USUARIOS"."ID_USUARIO"   IS 'identificador unigo de la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."USUARIOS"."ESTADO"       IS 'muestra el estado en el que se encuentra el usuario';

--Comentarios tabla TipoUsuario

COMMENT ON COLUMN "OW_TST_US"."TIPOUSUARIO"."ID"                  IS 'identificador unico del tipo de usuario';
COMMENT ON COLUMN "OW_TST_US"."TIPOUSUARIO"."NOMBRE_TIPO_USUARIO" IS 'nombre del tipo de usuario ';
COMMENT ON COLUMN "OW_TST_US"."TIPOUSUARIO"."ID_USUARIO"             IS 'identificador unigo de la persona registrada';

--Comentarios tabla TipoPagina

COMMENT ON COLUMN "OW_TST_US"."TIPOPAGINA"."ID"                 IS 'identificador unico del tipo de pagina';
COMMENT ON COLUMN "OW_TST_US"."TIPOPAGINA"."NOMBRE_TIPO_PAGINA" IS 'nombre del tipo de pagina ';

--Comentarios tabla Pagina

COMMENT ON COLUMN "OW_TST_US"."PAGINA"."ID"                 IS 'identificador unico de pagina';
COMMENT ON COLUMN "OW_TST_US"."PAGINA"."NOMBRE_PAGINA" IS 'nombre de aignado a una pagina ';
COMMENT ON COLUMN "OW_TST_US"."PAGINA"."TIPO_PAGINA"        IS 'identificador de tipo de pagina al que pertenece';

--Comentarios tabla Estado

COMMENT ON COLUMN "OW_TST_US"."ESTADO"."ID_ESTADO"     IS 'identifica con numero unico que se le asigna al nombre del estado';
COMMENT ON COLUMN "OW_TST_US"."ESTADO"."NOMBRE_ESTADO" 	      IS 'nombre que se le asigna a un estado';