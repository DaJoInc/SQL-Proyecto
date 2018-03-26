CREATE OR REPLACE PACKAGE INGRESO AS

  PROCEDURE INGRESOUSUARIO(
          p_nickname			 IN USUARIOS.NICKNAME%TYPE,
		  p_contrasena		 	 IN USUARIOS.CONTRASENA%TYPE,
		  
		  cod_respuesta        OUT VARCHAR,
		  msg_respuesta        OUT VARCHAR
  );
  

END INGRESO;



 /

prompt
prompt PACKAGE BODY: INGRESO
prompt

create or replace PACKAGE BODY INGRESO AS
--
  PROCEDURE INGRESOUSUARIO(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			
			cod_respuesta        OUT VARCHAR,
		    msg_respuesta        OUT VARCHAR

  ) IS
			v_estado number;

    BEGIN
		SELECT ESTADO INTO v_estado from USUARIOS WHERE NICKNAME = p_nickname AND CONTRASENA = p_contrasena;
		if v_estado = 1 then
			cod_respuesta:='Error';
		    msg_respuesta:='El usuario no ha sido autenticado por el administrador';
			dbms_output.put_line(msg_respuesta);
		else
			cod_respuesta:='Ok';
		    msg_respuesta:='El usuario autenticado por el administrador';
			dbms_output.put_line(msg_respuesta);
        END IF;
	END ;
	
END INGRESO;