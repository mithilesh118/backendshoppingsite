CREATE SEQUENCE IF NOT EXISTS public.master_status_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
--drop table master_status

CREATE TABLE IF NOT EXISTS public.master_status (
	status_code bigint NOT NULL DEFAULT nextval('master_status_id_seq'::regclass),
	status_name character varying(50) COLLATE pg_catalog."default",
	description character varying(255) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT master_status_pkey PRIMARY KEY (status_code)
)TABLESPACE pg_default;

INSERT INTO public.master_status(status_name, description, status,  created_by)VALUES ('enable', 'Enable', 1,  'Admin');
INSERT INTO public.master_status(status_name, description,  status,  created_by)VALUES ('disable', 'Disable', 1,  'Admin');
--select * from master_status
drop table master_state;
CREATE TABLE IF NOT EXISTS public.master_state (
	state_code character varying(30) COLLATE pg_catalog."default" NOT NULL,
	state_name character varying(50) COLLATE pg_catalog."default",
	state_or_ut character varying(30) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	CONSTRAINT state_code_pkey PRIMARY KEY (state_code),
	CONSTRAINT master_state_master_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION	
)TABLESPACE pg_default;

--drop table master_district
CREATE TABLE IF NOT EXISTS public.master_district (
	district_code character varying(30) COLLATE pg_catalog."default" NOT NULL,
	district_name character varying(50) COLLATE pg_catalog."default",
	state_code character varying(30) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	
	CONSTRAINT master_district_pkey PRIMARY KEY (district_code),
	
	CONSTRAINT master_state_master_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	CONSTRAINT master_district_state_code_fkey FOREIGN KEY (state_code)
    REFERENCES public.master_state (state_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
)TABLESPACE pg_default;

CREATE SEQUENCE IF NOT EXISTS public.master_address_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
CREATE TABLE IF NOT EXISTS public.master_address (
	address_id bigint NOT NULL DEFAULT nextval('master_address_id_seq'::regclass),
	address_line1 character varying(255) COLLATE pg_catalog."default" NOT NULL,
	address_line2 character varying(255) COLLATE pg_catalog."default",
	state_code character varying(30) COLLATE pg_catalog."default",
	district_code character varying(30) COLLATE pg_catalog."default",
	city character varying(50) COLLATE pg_catalog."default",
	pin character varying(6) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	
	CONSTRAINT master_address_pkey PRIMARY KEY (address_id),
	
	CONSTRAINT master_address_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_address_state_code_fkey FOREIGN KEY (state_code)
    REFERENCES public.master_state (state_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_address_state_district_code_fkey FOREIGN KEY (district_code)
    REFERENCES public.master_district (district_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
)TABLESPACE pg_default;

CREATE SEQUENCE IF NOT EXISTS public.master_status_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
--drop table master_status
CREATE TABLE IF NOT EXISTS public.master_status (
	status_code bigint NOT NULL DEFAULT nextval('master_status_id_seq'::regclass),
	status_name character varying(50) COLLATE pg_catalog."default",
	description character varying(255) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT master_status_pkey PRIMARY KEY (status_code)
)TABLESPACE pg_default;

INSERT INTO public.master_status(status_name, description, status,  created_by)VALUES ('enable', 'Enable', 1,  'Admin');
INSERT INTO public.master_status(status_name, description,  status,  created_by)VALUES ('disable', 'Disable', 1,  'Admin');
--select * from master_status

CREATE TABLE IF NOT EXISTS public.master_state (
	state_code character varying(30) COLLATE pg_catalog."default" NOT NULL,
	state_name character varying(50) COLLATE pg_catalog."default",
	state_or_ut character varying(30) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	CONSTRAINT state_code_pkey PRIMARY KEY (state_code),
	CONSTRAINT master_state_master_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION	
)TABLESPACE pg_default;

--drop table master_district
CREATE TABLE IF NOT EXISTS public.master_district (
	district_code character varying(30) COLLATE pg_catalog."default" NOT NULL,
	district_name character varying(50) COLLATE pg_catalog."default",
	state_code character varying(30) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	
	CONSTRAINT master_district_pkey PRIMARY KEY (district_code),
	
	CONSTRAINT master_state_master_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	CONSTRAINT master_district_state_code_fkey FOREIGN KEY (state_code)
    REFERENCES public.master_state (state_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
)TABLESPACE pg_default;

CREATE SEQUENCE IF NOT EXISTS public.master_address_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
CREATE TABLE IF NOT EXISTS public.master_address (
	address_id bigint NOT NULL DEFAULT nextval('master_address_id_seq'::regclass),
	address_line1 character varying(255) COLLATE pg_catalog."default" NOT NULL,
	address_line2 character varying(255) COLLATE pg_catalog."default",
	state_code character varying(30) COLLATE pg_catalog."default",
	district_code character varying(30) COLLATE pg_catalog."default",
	city character varying(50) COLLATE pg_catalog."default",
	pin character varying(6) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	
	CONSTRAINT master_address_pkey PRIMARY KEY (address_id),
	
	CONSTRAINT master_address_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_address_state_code_fkey FOREIGN KEY (state_code)
    REFERENCES public.master_state (state_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_address_state_district_code_fkey FOREIGN KEY (district_code)
    REFERENCES public.master_district (district_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
)TABLESPACE pg_default;

CREATE SEQUENCE IF NOT EXISTS public.master_units_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

    --drop table master_units;
CREATE TABLE IF NOT EXISTS public.master_units (
	unit_id bigint NOT NULL DEFAULT nextval('master_units_id_seq'::regclass),
	unit character varying(50) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT master_units_pkey PRIMARY KEY (unit_id),
	CONSTRAINT master_units_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
)TABLESPACE pg_default;



CREATE SEQUENCE IF NOT EXISTS public.master_document_type_doc_code_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
--drop table master_document_type	
CREATE TABLE IF NOT EXISTS public.master_document_type(
    doc_code smallint NOT NULL DEFAULT nextval('master_document_type_doc_code_seq'::regclass),
    description character varying(500) COLLATE pg_catalog."default" NOT NULL,
    required_type character(1) COLLATE pg_catalog."default",
    user_for  character varying(50) COLLATE pg_catalog."default" NOT NULL, 
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	
    CONSTRAINT master_document_type_pkey PRIMARY KEY (doc_code),
    CONSTRAINT master_document_type_status_fkey FOREIGN KEY (status)
        REFERENCES public.master_status (status_code) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE RESTRICT,
    CONSTRAINT master_document_type_required_type_check CHECK (required_type = ANY (ARRAY['M'::bpchar, 'O'::bpchar, 'S'::bpchar]))
);

CREATE SEQUENCE IF NOT EXISTS public.master_document_metadata_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
CREATE TABLE IF NOT EXISTS public.master_document_metadata(
    id integer NOT NULL DEFAULT nextval('master_document_metadata_seq'::regclass),
	file_name character varying(20) COLLATE pg_catalog."default",
	description character varying(500) COLLATE pg_catalog."default",
	title character varying(255) COLLATE pg_catalog."default",
    application_id integer NOT NULL,
    document_type smallint NOT NULL,
    content_type character varying(500) COLLATE pg_catalog."default",
    file_extension character varying(20) COLLATE pg_catalog."default",
	status smallint DEFAULT 1,
	doc_path character varying(500) COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT com_document_metadata_pkey PRIMARY KEY (id),
	
    CONSTRAINT com_document_metadata_document_type_fkey FOREIGN KEY (document_type)
        REFERENCES public.master_document_type (doc_code) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE RESTRICT,
    CONSTRAINT com_document_metadata_status_fkey FOREIGN KEY (status)
        REFERENCES public.master_status (status_code) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
);

    
	CREATE SEQUENCE IF NOT EXISTS public.supplier_Details_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
	CREATE TABLE IF NOT EXISTS public.supplier_Details (
	supplier_id bigint NOT NULL DEFAULT nextval('supplier_Details_id_seq'::regclass),
	company_name character varying(255) COLLATE pg_catalog."default",
	first_name character varying(100) COLLATE pg_catalog."default",
	last_name character varying(100) COLLATE pg_catalog."default",
	address_id integer,
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT supplier_Details_pkey PRIMARY KEY (supplier_id),
	
	CONSTRAINT supplier_Details_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT supplier_Details_addressId_fk FOREIGN KEY (address_id)
    REFERENCES public.master_address (address_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
		
)TABLESPACE pg_default;


CREATE SEQUENCE IF NOT EXISTS public.master_product_details_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
CREATE TABLE IF NOT EXISTS public.master_product_details (
	product_id bigint NOT NULL DEFAULT nextval('master_product_details_id_seq'::regclass),
	product_name character varying(50) COLLATE pg_catalog."default",
	sku character varying(50) COLLATE pg_catalog."default",
	supplier_id integer not null,
	unit_id integer not null,
	available_qauntity integer not null,
	reorder_level character varying(50) COLLATE pg_catalog."default",
	ranking integer ,
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT master_product_details_pkey PRIMARY KEY (product_id),
	
	CONSTRAINT master_product_details_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_product_details_supplier_id_fk FOREIGN KEY (supplier_id)
    REFERENCES public.supplier_Details (supplier_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_product_details_unit_id_id_fk FOREIGN KEY (unit_id)
    REFERENCES public.master_units (unit_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
	
)TABLESPACE pg_default;


CREATE SEQUENCE IF NOT EXISTS public.master_product_size_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

CREATE TABLE IF NOT EXISTS public.master_product_size (
	size_id bigint NOT NULL DEFAULT nextval('master_product_size_id_seq'::regclass),
	product_id integer NOT NULL,
	size character varying(50) COLLATE pg_catalog."default",
	description character varying(50) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	CONSTRAINT master_product_size_pkey PRIMARY KEY (size_id),
	
	CONSTRAINT master_product_size_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_product_size_product_id_fk FOREIGN KEY (status)
    REFERENCES public.master_product_details (product_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
	
)TABLESPACE pg_default;


CREATE SEQUENCE IF NOT EXISTS public.master_colors_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
CREATE TABLE IF NOT EXISTS public.master_colors (
	color_id bigint NOT NULL DEFAULT nextval('master_colors_id_seq'::regclass),
	name character varying(255) COLLATE pg_catalog."default" NOT NULL,
	description character varying(255) COLLATE pg_catalog."default",
	html_code character varying(30) COLLATE pg_catalog."default",
	status smallint NOT NULL DEFAULT 1,
	product_id integer not null,
	created_at timestamp without time zone DEFAULT now(),
	updated_at timestamp without time zone,
	created_by character varying(50) COLLATE pg_catalog."default",
	updated_by character varying(50) COLLATE pg_catalog."default",	
	
	CONSTRAINT master_colors_pkey PRIMARY KEY (color_id),
	CONSTRAINT master_colors_status_fk FOREIGN KEY (status)
    REFERENCES public.master_status (status_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
	
	CONSTRAINT master_colors_product_id_fk FOREIGN KEY (status)
    REFERENCES public.master_product_details (product_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
	
)TABLESPACE pg_default;










