CREATE OR REPLACE PACKAGE TIPO_USUARIO AS

  PROCEDURE INSERTAR(
            p_id         		 IN TIPOUSUARIO.ID%type,
            p_nombre			 IN TIPOUSUARIO.NOMBRE_TIPO_USUARIO%type,
			
			
			cod_respuesta        OUT VARCHAR,
			msg_respuesta        OUT VARCHAR
  );
  

END TIPO_USUARIO;

 /

prompt
prompt PACKAGE BODY: TIPO_USUARIO
prompt

create or replace PACKAGE BODY TIPO_USUARIO AS
--INSERTAR DATOS A UNA TABLA
  PROCEDURE INSERTAR(
            p_id         		 IN TIPOUSUARIO.ID%type,
            p_nombre			 IN TIPOUSUARIO.NOMBRE_TIPO_USUARIO%type,
			
			cod_respuesta        OUT VARCHAR,
			msg_respuesta        OUT VARCHAR
  ) IS

    BEGIN
				INSERT INTO 
				TIPOUSUARIO("ID","NOMBRE_TIPO_USUARIO") 
				VALUES 
				(id_tipoUsuario.NEXTVAL,p_nombre);
					cod_respuesta:='OK';
					msg_respuesta:='Registrado';

	END ;

END TIPO_USUARIO;