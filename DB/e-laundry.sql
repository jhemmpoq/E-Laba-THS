-- Database: e-laundry

-- DROP DATABASE "e-laundry";

CREATE DATABASE "e-laundry"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

    -- Table: public.admins

-- DROP TABLE public.admins;

CREATE TABLE IF NOT EXISTS public.admins
(
    id integer NOT NULL,
    username character varying(500) COLLATE pg_catalog."default" NOT NULL,
    email character varying(30) COLLATE pg_catalog."default" NOT NULL,
    password character varying(250) COLLATE pg_catalog."default" NOT NULL,
    fname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    lname character varying(500) COLLATE pg_catalog."default" NOT NULL,
    gender character varying(500) COLLATE pg_catalog."default" NOT NULL,
    dob text COLLATE pg_catalog."default" NOT NULL,
    contact text COLLATE pg_catalog."default" NOT NULL,
    address character varying(500) COLLATE pg_catalog."default" NOT NULL,
    image character varying(2000) COLLATE pg_catalog."default" NOT NULL,
    created_on date NOT NULL,
    group_id integer NOT NULL,
    CONSTRAINT admins_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.admins
    OWNER to postgres;

    -- Table: public.customer

-- DROP TABLE public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    id integer NOT NULL,
    fname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    lname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    contact character varying(200) COLLATE pg_catalog."default" NOT NULL,
    address character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT customer_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.customer
    OWNER to postgres;

    -- Table: public.manage_website

-- DROP TABLE public.manage_website;

CREATE TABLE IF NOT EXISTS public.manage_website
(
    id integer NOT NULL,
    title character varying(600) COLLATE pg_catalog."default" NOT NULL,
    short_title character varying(600) COLLATE pg_catalog."default" NOT NULL,
    logo text COLLATE pg_catalog."default" NOT NULL,
    footer text COLLATE pg_catalog."default" NOT NULL,
    currency_code character varying(600) COLLATE pg_catalog."default" NOT NULL,
    currency_symbol character varying(600) COLLATE pg_catalog."default" NOT NULL,
    login_logo text COLLATE pg_catalog."default" NOT NULL,
    invoice_logo text COLLATE pg_catalog."default" NOT NULL,
    background_login_image text COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.manage_website
    OWNER to postgres;

    -- Table: public.orders

-- DROP TABLE public.orders;

CREATE TABLE IF NOT EXISTS public.orders
(
    id integer NOT NULL,
    fname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    lname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    sname character varying(200) COLLATE pg_catalog."default" NOT NULL,
    discription character varying(200) COLLATE pg_catalog."default" NOT NULL,
    prizes character varying(50) COLLATE pg_catalog."default" NOT NULL,
    delivery date NOT NULL,
    delivery_status integer NOT NULL,
    todays_date date NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.orders
    OWNER to postgres;

    -- Table: public.service

-- DROP TABLE public.service;

CREATE TABLE IF NOT EXISTS public.service
(
    id integer NOT NULL,
    sname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    prize character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT service_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.service
    OWNER to postgres;

    -- Table: public.tbl_email_config

-- DROP TABLE public.tbl_email_config;

CREATE TABLE IF NOT EXISTS public.tbl_email_config
(
    e_id integer NOT NULL,
    name character varying(500) COLLATE pg_catalog."default" NOT NULL,
    mail_driver_host character varying(5000) COLLATE pg_catalog."default" NOT NULL,
    mail_port integer NOT NULL,
    mail_username character varying(50) COLLATE pg_catalog."default" NOT NULL,
    mail_password character varying(30) COLLATE pg_catalog."default" NOT NULL,
    mail_encrypt character varying(300) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_email_config
    OWNER to postgres;

    -- Table: public.tbl_group

-- DROP TABLE public.tbl_group;

CREATE TABLE IF NOT EXISTS public.tbl_group
(
    id integer NOT NULL,
    name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    description character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_group_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_group
    OWNER to postgres;

    -- Table: public.tbl_permission

-- DROP TABLE public.tbl_permission;

CREATE TABLE IF NOT EXISTS public.tbl_permission
(
    id integer NOT NULL,
    name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    display_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    operation character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_permission_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_permission
    OWNER to postgres;

    -- Table: public.tbl_permission_role

-- DROP TABLE public.tbl_permission_role;

CREATE TABLE IF NOT EXISTS public.tbl_permission_role
(
    id integer NOT NULL,
    permission_id integer NOT NULL,
    role_id integer NOT NULL,
    CONSTRAINT tbl_permission_role_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_permission_role
    OWNER to postgres;

    -- Table: public.tbl_sms_config

-- DROP TABLE public.tbl_sms_config;

CREATE TABLE IF NOT EXISTS public.tbl_sms_config
(
    smsid integer NOT NULL,
    senderid integer NOT NULL,
    sms_username character varying(30) COLLATE pg_catalog."default" NOT NULL,
    sms_password character varying(20) COLLATE pg_catalog."default" NOT NULL,
    auth_key character varying(80) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_sms_config
    OWNER to postgres;

    