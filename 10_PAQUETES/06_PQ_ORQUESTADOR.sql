create or replace PACKAGE ORQUESTADOR AS

  PROCEDURE ORQUESTADORAPPREGISTRO(
			p_idusuario          IN PERSONAS.ID_USUARIO%type,
            p_nombre			 IN PERSONAS.NOMBRE%type,
			p_apellidos			 IN PERSONAS.APELLIDOS%type,
			p_documento		     IN PERSONAS.DOCUMENTO%type,
			p_tipodocumento		 IN PERSONAS.TIPO_DOCUMENTO%type,
			p_correo			 IN PERSONAS.CORREO%type,
			p_anonacimiento		 IN PERSONAS.ANO_NACIMIENTO%type,
			p_telefono			 IN PERSONAS.TELEFONO%type,
			
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			p_idusuarios		 IN USUARIOS.ID_USUARIO%TYPE,
              p_estado		 IN USUARIOS.ESTADO%TYPE,
			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  );

    PROCEDURE ORQUESTADORAPPACTUALIZAR(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  );

  PROCEDURE ORQUESTADORAPPINGRESO(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,


			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  );


  PROCEDURE INGRESOADMIN(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
               p_nicknameestado		 IN USUARIOS.NICKNAME%TYPE,
			p_estado			 IN USUARIOS.ESTADO%TYPE,

		  cod_respuesta        OUT VARCHAR,
		  msg_respuesta        OUT VARCHAR
  );
END ORQUESTADOR;

 /

prompt
prompt PACKAGE BODY: ORQUESTADOR
prompt

create or replace PACKAGE BODY ORQUESTADOR AS
PROCEDURE ORQUESTADORAPPREGISTRO(
			p_idusuario          IN PERSONAS.ID_USUARIO%type,
            p_nombre			 IN PERSONAS.NOMBRE%type,
			p_apellidos			 IN PERSONAS.APELLIDOS%type,
			p_documento		     IN PERSONAS.DOCUMENTO%type,
			p_tipodocumento		 IN PERSONAS.TIPO_DOCUMENTO%type,
			p_correo			 IN PERSONAS.CORREO%type,
			p_anonacimiento		 IN PERSONAS.ANO_NACIMIENTO%type,
			p_telefono			 IN PERSONAS.TELEFONO%type,
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			p_idusuarios		 IN USUARIOS.ID_USUARIO%TYPE,
            p_estado		     IN USUARIOS.ESTADO%TYPE,			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar
			
  ) IS
		v_nickname varchar(255);
		v_iduser    number;
        v_estado     number;
        v_contrasena varchar(255);

    BEGIN
        v_contrasena:= utl_i18n.string_to_raw(data =>dbms_obfuscation_toolkit.md5(input_string => p_contrasena));
		v_iduser:=id_persona.NextVal;
        v_estado:=1;

		PERSONAS_CRUD.INSERTAR(v_iduser, p_nombre, p_apellidos,p_documento,p_tipodocumento,p_correo,p_anonacimiento,p_telefono,cod_respuesta,msg_respuesta);
		
         if cod_respuesta = 'OK' then
          USUARIOS_CRUD.INSERTAR(p_nickname, v_contrasena, v_iduser,v_estado,cod_respuesta,msg_respuesta);
        end if;
	END ;


	PROCEDURE ORQUESTADORAPPACTUALIZAR(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  ) IS
		v_nickname varchar(255);
		v_iduser   number;


    BEGIN
		USUARIOS_CRUD.ACTUALIZARCONTRASENA(p_nickname, p_contrasena,cod_respuesta,msg_respuesta);

	END ;

	PROCEDURE ORQUESTADORAPPINGRESO(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,

			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar

  ) IS
		v_nickname varchar(255);
		v_iduser   number;


    BEGIN
		INGRESO.INGRESOUSUARIO(p_nickname, p_contrasena,cod_respuesta,msg_respuesta);

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

    BEGIN
		INGRESO.INGRESOADMIN(p_nickname, p_contrasena,p_nicknameestado,p_estado,cod_respuesta,msg_respuesta);
	END ;
END ORQUESTADOR;