alter table "OW_TST_US"."Usuarios"
add FOREIGN KEY ("tipo_pagina") REFERENCES "OW_TST_US"."TipoPagina"("id");

--

alter table "OW_TST_US"."Usuarios"
add FOREIGN KEY ("id_usuario") REFERENCES "OW_TST_US"."Personas"("id_usuario");

--

alter table "OW_TST_US"."TipoUsuario"
add FOREIGN KEY ("id_usuario") REFERENCES "OW_TST_US"."Personas"("id_usuario");

--

alter table "OW_TST_US"."Pagina"
add FOREIGN KEY ("tipo_pagina") REFERENCES "OW_TST_US"."TipoPagina"("id");