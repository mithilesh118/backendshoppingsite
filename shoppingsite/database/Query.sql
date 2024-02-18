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

drop table master_district
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






