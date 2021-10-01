-- Database: e-laba

-- DROP DATABASE "e-laba";
    -- Table: public.admins

-- DROP TABLE public.admins;

CREATE TABLE IF NOT EXISTS public.admins
(
    id serial NOT NULL,
    username character varying(500) COLLATE pg_catalog."default" NOT NULL,
    email character varying(30) COLLATE pg_catalog."default" NOT NULL,
    password character varying(250) COLLATE pg_catalog."default" NOT NULL,
    fname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    gender character varying(500) COLLATE pg_catalog."default" NOT NULL,
    dob text COLLATE pg_catalog."default" NOT NULL,
    contact text COLLATE pg_catalog."default" NOT NULL,
    address character varying(500) COLLATE pg_catalog."default" NOT NULL,
    images character varying(2000) COLLATE pg_catalog."default" NOT NULL,
    created_on date NOT NULL,
    group_id integer NOT NULL,
    CONSTRAINT admins_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.admins
    OWNER to postgres;

    INSERT INTO admins (username, email, password, fname, gender, dob, contact, address, images, created_on, group_id) VALUES
('admin', 'admin@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Jhem', 'Male', '2018-11-26', '9423979339', 'Anonymous', 'unr_harrypotter_171212_1815_34k5k.png', '2018-04-30', 1),
('user', 'ndbhalerao91@gmail.com', 'db8cd0860d3eeba4da1801178e4942dc4e515484cc9176983d3335a23cc1afb1', 'rushi', 'Female', '2019-06-06', '9423979339', 'advx', '', '2019-06-26', 0),
('user', 'akash@gmail.com', 'bbcff4db4d8057800d59a68224efd87e545fa1512dfc3ef68298283fbb3b6358', 'Akash', 'Male', '1991-01-01', '9423979339', 'nashik, maharashtra', '70520.png', '2020-08-16', 2);

    -- Table: public.customer

-- DROP TABLE public.customer;


    -- Table: public.manage_website

-- DROP TABLE public.manage_website;

CREATE TABLE IF NOT EXISTS public.manage_website
(
    id serial NOT NULL,
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

    INSERT INTO manage_website (title, short_title, logo, footer, currency_code, currency_symbol, login_logo, invoice_logo, background_login_image) VALUES
('E-Laba | Laundry Management System', 'E-Laba | Laundry Management System', 'logo.jpg', 'JRJ', 'PHP', '₱', 'logo.jpg', 'logo.jpg', '1091 - Copy.jpg');

    -- Table: public.orders

-- DROP TABLE public.orders;

CREATE TABLE IF NOT EXISTS public.orders
(
    id serial NOT NULL,
    fname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    sname character varying(200) COLLATE pg_catalog."default" NOT NULL,
    descriptions character varying(200) COLLATE pg_catalog."default" NOT NULL,
    price character varying(50) COLLATE pg_catalog."default" NOT NULL,
    delivery_date date NOT NULL,
    delivery_status integer NOT NULL,
    todays_date timestamp without time zone NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.orders
    OWNER to postgres;

    INSERT INTO orders (fname, sname, descriptions, price, delivery_date, delivery_status, todays_date) VALUES
('Alvin', '1', 'konting sabon lang', '1', '2021-06-30', 1, '2019-06-27'),
('Rosella', '2', 'wag masyado', '2', '2021-06-29', 1, '2019-06-27'),
('Juvi', '3', 'wag masyado madiin', '3', '2021-06-29', 1, '2019-06-28'),
('JM', '4', 'dahan-dahan', '4', '2021-10-01', 0, '2021-10-01');

    -- Table: public.services

-- DROP TABLE public.services;

CREATE TABLE IF NOT EXISTS public.services
(
    id serial NOT NULL,
    sname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    price character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT services_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.services
    OWNER to postgres;

    INSERT INTO services (sname, price) VALUES
('Washing', '100'),
('Rollpessing', '160'),
('Ironing', '50'),
('Dry Clean', '130');

    -- Table: public.tbl_email_config

-- DROP TABLE public.tbl_email_config;

CREATE TABLE IF NOT EXISTS public.tbl_email_config
(
    e_id serial NOT NULL,
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

    INSERT INTO tbl_email_config (name, mail_driver_host, mail_port, mail_username, mail_password, mail_encrypt) VALUES
('<Laundry Management> ', 'mail.gmail.com', 587, 'ndbhalerao91@gmail.com', 'x(ilz?cWumI2', 'sdsad');


    -- Table: public.tbl_group

-- DROP TABLE public.tbl_group;

CREATE TABLE IF NOT EXISTS public.tbl_group
(
    id serial NOT NULL,
    name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    descriptions character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_group_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_group
    OWNER to postgres;

    INSERT INTO tbl_group (name, descriptions) VALUES
('admin', 'admin'),
('staff', 'staff');

    -- Table: public.tbl_permission

-- DROP TABLE public.tbl_permission;

CREATE TABLE IF NOT EXISTS public.tbl_permission
(
    id serial NOT NULL,
    name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    display_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    operation character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_permission_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_permission
    OWNER to postgres;

    INSERT INTO tbl_permission (name, display_name, operation) VALUES
('manage_user', 'Manage User', 'manage_user'),
('add_user', 'Add User', 'add_user'),
('edit_user', 'Edit User', 'edit_user'),
('delete_user', 'Delete User', 'delete_user'),
('add_order', 'Add Order', 'add_order'),
('edit_order', 'Edit Order', 'edit_order'),
('delete_order', 'Delete Order', 'delete_order'),
('add_services', 'Add Services', 'add_services'),
('delete_services', 'Delete Services', 'delete_services');


    -- Table: public.tbl_permission_role

-- DROP TABLE public.tbl_permission_role;

CREATE TABLE IF NOT EXISTS public.tbl_permission_role
(
    id serial NOT NULL,
    permission_id integer NOT NULL,
    role_id integer NOT NULL,
    CONSTRAINT tbl_permission_role_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_permission_role
    OWNER to postgres;

    INSERT INTO tbl_permission_role (permission_id, role_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(8, 3),
(10, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5);


    -- Table: public.tbl_sms_config

-- DROP TABLE public.tbl_sms_config;

CREATE TABLE IF NOT EXISTS public.tbl_sms_config
(
    smsid serial NOT NULL,
    senderid integer NOT NULL,
    sms_username character varying(30) COLLATE pg_catalog."default" NOT NULL,
    sms_password character varying(20) COLLATE pg_catalog."default" NOT NULL,
    auth_key character varying(80) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.tbl_sms_config
    OWNER to postgres;

INSERT INTO tbl_sms_config (senderid, sms_username, sms_password, auth_key) VALUES
(101, 'username', 'password', 'authkey');
