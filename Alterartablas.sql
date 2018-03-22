alter table "Personas"
add constraint PK_Personas primary key(id_usuario)
constraint PK_Personas primary key(documento);

---

alter table "Usuarios"
add constraint PK_Usuarios primary key("nickname")and
FOREIGN KEY ("tipo_usuario") REFERENCES TipoUsuario("id_usuario")
FOREIGN KEY ("tipo_pagina") REFERENCES TipoPagina("id");

---

alter table "TipoUsuario"
add constraint PK_TipoUsuario primary key("id");

--

alter table "TipoPagina"
add constraint PK_TipoPagina primary key("id");

--

alter table "Pagina"
add constraint PK_Pagina primary key("id") and
FOREIGN KEY ("tipo_pagina") REFERENCES TipoPagina("id");

--

alter table "Estado"
add constraint PK_Estado primary key("id");