create or replace PACKAGE INGRESO AS
--
  PROCEDURE INGRESOUSUARIO(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta        OUT VARCHAR,
              id_usuario       OUT VARCHAR,
		    msg_respuesta        OUT VARCHAR

  );

	PROCEDURE INGRESOADMIN(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
            p_nicknameestado		 IN USUARIOS.NICKNAME%TYPE,
			p_estado			 IN USUARIOS.ESTADO%TYPE,

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

	PROCEDURE INGRESOADMIN(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
            p_nicknameestado		 IN USUARIOS.NICKNAME%TYPE,
			p_estado			 IN USUARIOS.ESTADO%TYPE,

			cod_respuesta        OUT VARCHAR,
		    msg_respuesta        OUT VARCHAR

  ) IS
			v_idusuario number;
			v_idusuariot number;
			v_tipo number;
            v_estado number;
            v_nom varchar(255);

    BEGIN
	SELECT ID_USUARIO INTO v_idusuario from USUARIOS WHERE NICKNAME = p_nickname AND CONTRASENA = p_contrasena;
		
		SELECT ID_USUARIO INTO v_idusuariot from TIPOUSUARIO;
		
		IF v_idusuario=v_idusuariot THEN
        
            SELECT ID INTO v_tipo from TIPOUSUARIO;
            if v_tipo = 1 then
                UPDATE USUARIOS
                    SET ESTADO = p_estado
                    WHERE NICKNAME 	  = p_nicknameestado;
                    cod_respuesta:='Ok';
                    msg_respuesta:='Se ha actualizado estado';
                    dbms_output.put_line(msg_respuesta);
                    else
                cod_respuesta:='Ok';
                msg_respuesta:='El usuario autenticado por el administrador';
                dbms_output.put_line(msg_respuesta);
            END IF;
    
        END IF;

	END ;

END INGRESO;