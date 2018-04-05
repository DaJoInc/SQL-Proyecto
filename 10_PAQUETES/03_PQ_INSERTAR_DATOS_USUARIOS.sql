create or replace PACKAGE USUARIOS_CRUD AS

  PROCEDURE INSERTAR(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			p_idusuarios		 IN USUARIOS.ID_USUARIO%TYPE,
            p_estado		 IN USUARIOS.ESTADO%TYPE,
			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  );

    PROCEDURE ACTUALIZARCONTRASENA(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
            p_contrasenanueva	 IN USUARIOS.CONTRASENA%TYPE,

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
            p_estado		     IN USUARIOS.ESTADO%TYPE,

			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar
			
  ) IS
            v_nickname 		 varchar(255);
            v_numeroregistro number;



    BEGIN


			select COUNT(*) INTO v_numeroregistro FROM USUARIOS;
			if v_numeroregistro = 0 then
                INSERT INTO 
                        USUARIOS("NICKNAME","CONTRASENA","ID_USUARIO","ESTADO") 
                VALUES 
                       (p_nickname,p_contrasena, p_idusuarios,p_estado);
                        cod_respuesta:='OK';
                        msg_respuesta:='El usuario fue registrado';
                        dbms_output.put_line(msg_respuesta);
            end if;
            select COUNT(*) INTO v_nickname from USUARIOS where NICKNAME = p_nickname;
            if  v_nickname = 0 then
                INSERT INTO 
					USUARIOS("NICKNAME","CONTRASENA","ID_USUARIO","ESTADO") 
                VALUES 
					(p_nickname,p_contrasena, p_idusuarios,p_estado);
                    cod_respuesta:='OK';
                    msg_respuesta:='El usuario fue registrado';
                    dbms_output.put_line(msg_respuesta);
            else
                    cod_respuesta:='Error';
					msg_respuesta:='El usuario ya existe';
					dbms_output.put_line(msg_respuesta);

			end if;

	END ;

   PROCEDURE ACTUALIZARCONTRASENA(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
            p_contrasenanueva		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  )	IS

        v_contrasena varchar(255);
        v_nickname varchar(255);
        
        v_contrasenainto varchar(255);
        v_contrasenanueva varchar(255);

    BEGIN
           v_contrasena:= utl_i18n.string_to_raw(data =>dbms_obfuscation_toolkit.md5(input_string => p_contrasena));
           v_contrasenanueva:= utl_i18n.string_to_raw(data =>dbms_obfuscation_toolkit.md5(input_string => p_contrasenanueva));

      select NICKNAME,CONTRASENA into v_nickname,v_contrasenainto from USUARIOS where NICKNAME = p_nickname AND CONTRASENA = v_contrasena;
            
        if v_nickname = p_nickname and  v_contrasena = v_contrasenainto then
        
		UPDATE USUARIOS
		    SET CONTRASENA   =   v_contrasenanueva;
			cod_respuesta:='Ok';
		    msg_respuesta:='Se ha actualizado la contraseÃ±a';
			dbms_output.put_line(msg_respuesta);
            end if;
            EXCEPTION
			WHEN OTHERS THEN
			dbms_output.put_line('CLAVE O NOMBRE INCORRECTA');

	END;

END USUARIOS_CRUD;