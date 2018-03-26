CREATE OR REPLACE PACKAGE PERSONAS_CRUD AS

  PROCEDURE INSERTAR(
            p_idusuario          IN PERSONAS.ID_USUARIO%type,
            p_nombre			 IN PERSONAS.NOMBRE%type,
			p_apellidos			 IN PERSONAS.APELLIDOS%type,
			p_documento		     IN PERSONAS.DOCUMENTO%type,
			p_tipodocumento		 IN PERSONAS.TIPO_DOCUMENTO%type,
			p_correo			 IN PERSONAS.CORREO%type,
			p_anonacimiento		 IN PERSONAS.ANO_NACIMIENTO%type,
			p_telefono			 IN PERSONAS.TELEFONO%type,
			cod_respuesta        OUT VARCHAR,
			msg_respuesta        OUT VARCHAR
  );

END PERSONAS_CRUD;

 /

prompt
prompt PACKAGE BODY: PERSONAS_CRUD
prompt

create or replace PACKAGE BODY PERSONAS_CRUD AS
--INSERTAR DATOS A UNA TABLA
  PROCEDURE INSERTAR(
            p_idusuario          IN PERSONAS.ID_USUARIO%type,
            p_nombre			 IN PERSONAS.NOMBRE%type,
			p_apellidos			 IN PERSONAS.APELLIDOS%type,
			p_documento		     IN PERSONAS.DOCUMENTO%type,
			p_tipodocumento		 IN PERSONAS.TIPO_DOCUMENTO%type,
			p_correo			 IN PERSONAS.CORREO%type,
			p_anonacimiento		 IN PERSONAS.ANO_NACIMIENTO%type,
			p_telefono			 IN PERSONAS.TELEFONO%type,
			
			cod_respuesta        OUT VARCHAR,
			msg_respuesta        OUT VARCHAR
  ) IS
			v_documento number;
			v_numeroregistro NUMBER;

    BEGIN

			
			select COUNT(*) INTO v_numeroregistro FROM USUARIOS;
			if v_numeroregistro = 0 then
				INSERT INTO 
				PERSONAS("ID_USUARIO","NOMBRE","APELLIDOS","DOCUMENTO","TIPO_DOCUMENTO","CORREO","ANO_NACIMIENTO","TELEFONO") 
				VALUES 
				(p_idusuario,p_nombre, p_apellidos, p_documento, p_tipodocumento, p_correo, p_anonacimiento,p_telefono);
			cod_respuesta:='OK';
			msg_respuesta:='La persona fue registrada';
			dbms_output.put_line(msg_respuesta);
			else
				select DOCUMENTO into v_documento from PERSONAS;
				if p_documento = v_documento then
				cod_respuesta:='Error';
				msg_respuesta:='La persona ya existe';
				dbms_output.put_line(msg_respuesta);
				else
					INSERT INTO 
					PERSONAS("ID_USUARIO","NOMBRE","APELLIDOS","DOCUMENTO","TIPO_DOCUMENTO","CORREO","ANO_NACIMIENTO","TELEFONO") 
					VALUES 
					(p_idusuario,p_nombre, p_apellidos, p_documento, p_tipodocumento, p_correo, p_anonacimiento,p_telefono);
				cod_respuesta:='OK';
				msg_respuesta:='La persona fue registrada';
				dbms_output.put_line(msg_respuesta);
				end if;
         end if;            
	END ;
 
END PERSONAS_CRUD;