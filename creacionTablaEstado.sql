--
CREATE TABLE "OW_TST_US"."Estado"
(
	"id"  				integer not null ,
	"nombre_estado"     VARCHAR(255) not null
	
	
);
COMMENT ON COLUMN "OW_TST_US"."Estado"."id"     IS 'identifica con numero unico que se le asigna al nombre del estado';
COMMENT ON COLUMN "OW_TST_US"."Estado"."nombre_estado" 	      IS 'nombre que se le asigna a un estado';

--
