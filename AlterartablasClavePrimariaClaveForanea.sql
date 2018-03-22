--Asignacion clave primaria de id_usuario y documento de la tabla Persona
alter table "Personas"
add constraint PK_Personas primary key(id_usuario)
constraint PK_Personas primary key(documento);

--Asignacion de clave primaria nickname , claves foraneas de id_usuario y tipo_pagina de la tabla Usuarios

alter table "Usuarios"
add constraint PK_Usuarios primary key("nickname")and
FOREIGN KEY ("tipo_pagina") REFERENCES TipoPagina("id")
FOREIGN KEY ("id_usuario") REFERENCES Personas("id_usuario");

--Asignacion de clave primaria id , claves foraneas de id_usuario tabla TipoUsuarios

alter table "TipoUsuario"
add constraint PK_TipoUsuario primary key("id")
FOREIGN KEY ("id_usuario") REFERENCES Personas("id_usuario");

--Asignacion clave primaria de idde la tabla TipoPagina

alter table "TipoPagina"
add constraint PK_TipoPagina primary key("id");

--Asignacion de clave primaria id , clave foranea de tipo_pagina tabla Paginas

alter table "Pagina"
add constraint PK_Pagina primary key("id") and
FOREIGN KEY ("tipo_pagina") REFERENCES TipoPagina("id");

--Asignacion clave primaria de id de la tabla Estados

alter table "Estado"
add constraint PK_Estado primary key("id");