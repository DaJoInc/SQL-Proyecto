--Comentarios tabla Personas
COMMENT ON COLUMN "OW_TST_US"."Personas"."id_usuario"     IS 'identifica con un numero unico al usuario';
COMMENT ON COLUMN "OW_TST_US"."Personas"."nombre" 	      IS 'nombre de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."apellidos"      IS 'apellidos de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."documento"      IS 'documento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."tipo_dpcumento" IS 'Tipo de documento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."correo" 		  IS 'correo de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."ano_nacimiento" IS 'año de nacimiento de la persona del registro';
COMMENT ON COLUMN "OW_TST_US"."Personas"."telefono"       IS 'telefono de la persona del registro';

--Comentarios tabla Usuarios

COMMENT ON COLUMN "OW_TST_US"."Usuarios"."nickname"     IS 'nombre de usuario unico de la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."contrasena"   IS 'contrasena de usuario la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."tipo_pagina"  IS 'identificador de tipo de pagina al que pertenece';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."id_usuario"   IS 'identificador unigo de la persona registrada';
COMMENT ON COLUMN "OW_TST_US"."Usuarios"."estado"       IS 'muestra el estado en el que se encuentra el usuario';

--Comentarios tabla TipoUsuario

COMMENT ON COLUMN "OW_TST_US"."TipoUsuario"."id"                  IS 'identificador unico del tipo de usuario';
COMMENT ON COLUMN "OW_TST_US"."TipoUsuario"."nombre_tipo_usuario" IS 'nombre del tipo de usuario ';
COMMENT ON COLUMN "OW_TST_US"."TipoUsuario"."id_usuario"             IS 'identificador unigo de la persona registrada';

--Comentarios tabla TipoPagina

COMMENT ON COLUMN "OW_TST_US"."TipoPagina"."id"                 IS 'identificador unico del tipo de pagina';
COMMENT ON COLUMN "OW_TST_US"."TipoPagina"."nombre_tipo_pagina" IS 'nombre del tipo de pagina ';

--Comentarios tabla Pagina

COMMENT ON COLUMN "OW_TST_US"."Pagina"."id"                 IS 'identificador unico de pagina';
COMMENT ON COLUMN "OW_TST_US"."Pagina"."nombre_pagina" IS 'nombre de aignado a una pagina ';
COMMENT ON COLUMN "OW_TST_US"."Pagina"."tipo_pagina"        IS 'identificador de tipo de pagina al que pertenece';

--Comentarios tabla Estado

COMMENT ON COLUMN "OW_TST_US"."Estado"."id"     IS 'identifica con numero unico que se le asigna al nombre del estado';
COMMENT ON COLUMN "OW_TST_US"."Estado"."nombre_estado" 	      IS 'nombre que se le asigna a un estado';