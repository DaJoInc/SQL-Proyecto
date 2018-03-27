CREATE OR REPLACE PACKAGE ORQUESTADOR AS

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
			p_nicknameestado			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
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
--INSERTAR DATOS A UNA TABLA
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
			
			cod_respuesta		 OUT varchar,
			msg_respuesta		 OUT varchar
			
  ) IS
		v_nickname varchar(255);
		v_iduser   number;
		
		
    BEGIN
		v_iduser:=id_persona.NextVal;
		PERSONAS_CRUD.INSERTAR(v_iduser, p_nombre, p_apellidos,p_documento,p_tipodocumento,p_correo,p_anonacimiento,p_telefono,cod_respuesta,msg_respuesta);
		USUARIOS_CRUD.INSERTAR(p_nickname, p_contrasena, v_iduser,cod_respuesta,msg_respuesta);
			
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
		INGRESO.INGRESOUSUARIOS(p_nickname, p_contrasena,cod_respuesta,msg_respuesta);
			
	END ;
 
 PROCEDURE INGRESOADMIN(
			p_nickname			 IN USUARIOS.NICKNAME%TYPE,
			p_nicknameestado			 IN USUARIOS.NICKNAME%TYPE,
			p_contrasena		 IN USUARIOS.CONTRASENA%TYPE,
			p_estado			 IN USUARIOS.ESTADO%TYPE,
			
			cod_respuesta        OUT VARCHAR,
		    msg_respuesta        OUT VARCHAR

  ) IS
			v_idusuario number;
			v_idusuariot number;
			v_tipo number;

    BEGIN
		INGRESO.INGRESOUSUARIOS(p_nickname, p_contrasena,p_nicknameestado,p_estado,cod_respuesta,msg_respuesta);
	END ;
END ORQUESTADOR;