create or replace PACKAGE USUARIOS_CRUD AS

  PROCEDURE INSERTAR(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			p_idusuarios		 IN USUARIOS.ID_USUARIO%TYPE,
			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  );

    PROCEDURE ACTUALIZARCONTRASENA(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  );

END USUARIOS_CRUD;

 /

prompt
prompt PACKAGE BODY: USUARIOS_CRUD
prompt

create or replace PACKAGE BODY USUARIOS_CRUD AS
--INSERTAR DATOS A UNA TABLA
  PROCEDURE INSERTAR(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			p_idusuarios		 IN USUARIOS.ID_USUARIO%TYPE,

			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar
			
  ) IS
		v_nickname 		 varchar(255);
		v_numeroregistro number;
 


    BEGIN

			select COUNT(*) INTO v_numeroregistro FROM USUARIOS;
			if v_numeroregistro = 0 then
			INSERT INTO 
				USUARIOS("NICKNAME","CONTRASENA","ID_USUARIO") 
				VALUES 
				(p_nickname,p_contrasena, p_idusuarios);
					cod_respuesta:='OK';
					msg_respuesta:='El usuario fue registrado';
					dbms_output.put_line(msg_respuesta);
				
				select NICKNAME into v_nickname from USUARIOS;
				elsif  p_nickname = v_nickname then
					cod_respuesta:='Error';
					msg_respuesta:='El usuario ya existe';
					dbms_output.put_line(msg_respuesta);
				else
					INSERT INTO 
					USUARIOS("NICKNAME","CONTRASENA","ID_USUARIO") 
					VALUES 
					(p_nickname,p_contrasena, p_idusuarios);
						cod_respuesta:='OK';
						msg_respuesta:='El usuario fue registrado';
						dbms_output.put_line(msg_respuesta);

				
			end if;
	END ;

   PROCEDURE ACTUALIZARCONTRASENA(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  )	IS

	BEGIN
		UPDATE USUARIOS
		    SET CONTRASENA = p_contrasena
		    WHERE NICKNAME 	  = p_nickname;
			cod_respuesta:='Ok';
		    msg_respuesta:='Se ha actualizado la contraseÃ±a';
			dbms_output.put_line(msg_respuesta);
	END;

END USUARIOS_CRUD;