-- Database: e-laba

-- DROP DATABASE "e-laba";
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
    images character varying(2000) COLLATE pg_catalog."default" NOT NULL,
    created_on date NOT NULL,
    group_id integer NOT NULL,
    CONSTRAINT admins_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.admins
    OWNER to postgres;

    INSERT INTO admins (id, username, email, password, fname, lname, gender, dob, contact, address, images, created_on, group_id) VALUES
(1, 'admin', 'ndbhalerao91@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Nikhil', 'Bhalerao', 'Male', '2018-11-26', '9423979339', 'Nashik', 'unr_harrypotter_171212_1815_34k5k.png', '2018-04-30', 1),
(3, 'user', 'ndbhalerao91@gmail.com', 'db8cd0860d3eeba4da1801178e4942dc4e515484cc9176983d3335a23cc1afb1', 'rushi', 'bhalerao', 'Female', '2019-06-06', '9423979339', 'advx', '', '2019-06-26', 0),
(4, 'user', 'admin@admin.com', 'c7af47bc241fbf1888df2b5e466672c67b1d8987e280836554490d51dbe65cb4', 'sandip', 'vidhate', 'Male', '2019-06-03', '2589632147', 'nasik', 'mylogo.png', '2019-06-27', 0),
(5, 'user', 'akash@gmail.com', 'bbcff4db4d8057800d59a68224efd87e545fa1512dfc3ef68298283fbb3b6358', 'Akash', 'ahire', 'Male', '1991-01-01', '9423979339', 'nashik, maharashtra', '70520.png', '2020-08-16', 2);

    -- Table: public.customer

-- DROP TABLE public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    id serial NOT NULL,
    fname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    lname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    contact character varying(200) COLLATE pg_catalog."default" NOT NULL,
    address character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT customer_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.customer
    OWNER to postgres;

    INSERT INTO customer (id, fname, lname, contact, address) VALUES
(1, 'gautam', 'amrale', '9423979339', 'nasik=45'),
(6, 'rupesh', 'mahajan', '9423979339', 'nasik'),
(9, 'sujata', 'bhalerao', '9423979339', 'nasik'),
(10, 'bhagyashri', 'ahire', '9012312321', 'nasik'),
(11, 'gautam', 'amrale', '9423232323', 'nasik,punchavati'),
(12, 'sujata', 'bhalerao', '8080808080', 'cskabskcb'),
(13, 'Atul', 'Petkar', '9423979339', 'nashik'),
(14, 'Johnny', 'Smith', '0912345678', 'Sample Address');

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

    INSERT INTO manage_website (id, title, short_title, logo, footer, currency_code, currency_symbol, login_logo, invoice_logo, background_login_image) VALUES
(1, 'Sunburn Laundry Systems', 'Sunburn Laundry Systems', 'logo.jpg', 'Nikhil Bhalerao', 'INR', 'â‚¹', 'logo.jpg', 'logo.jpg', '1091 - Copy.jpg');

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
    delivery_date date NOT NULL,
    delivery_status integer NOT NULL,
    todays_date timestamp without time zone NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.orders
    OWNER to postgres;

    INSERT INTO orders (id, fname, lname, sname, discription, prizes, delivery_date, delivery_status, todays_date) VALUES
(18, '11', '', '4', 'sfvs', '50', '2019-06-30', 1, '2019-06-27'),
(19, '10', '', '4', 'ascfa', '50', '2019-06-29', 1, '2019-06-27'),
(25, '10', '', '14', 'dress', '160', '2019-06-29', 1, '2019-06-28'),
(28, '13', '', '4', 'dry cleaning', '50', '2020-08-17', 1, '2016-08-20');

    -- Table: public.services

-- DROP TABLE public.services;

CREATE TABLE IF NOT EXISTS public.services
(
    id integer NOT NULL,
    sname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    prize character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT service_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.services
    OWNER to postgres;

    INSERT INTO services (id, sname, prize) VALUES
(4, 'washing', '50'),
(14, 'rollpessing', '160'),
(15, 'ironing', '100'),
(16, 'Ironing', '20');

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

    INSERT INTO tbl_email_config (e_id, name, mail_driver_host, mail_port, mail_username, mail_password, mail_encrypt) VALUES
(1, '<Laundry Management> ', 'mail.gmail.com', 587, 'ndbhalerao91@gmail.com', 'x(ilz?cWumI2', 'sdsad');


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

    INSERT INTO tbl_group (id, name, description) VALUES
(1, 'admin', 'admin'),
(2, 'manager', 'manager'),
(3, 'employee', 'employee'),
(4, 'supervisor', 'role description');

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

    INSERT INTO tbl_permission (id, name, display_name, operation) VALUES
(1, 'manage_user', 'Manage User', 'manage_user'),
(2, 'add_user', 'Add User', 'add_user'),
(3, 'edit_user', 'Edit User', 'edit_user'),
(4, 'delete_user', 'Delete User', 'delete_user'),
(5, 'add_order', 'add order', 'add_order'),
(6, 'edit_order', 'edit order', 'edit_order'),
(7, 'delete_order', 'delete order', 'delete_order'),
(8, 'edit_custome', 'edit_customer', 'edit_customer'),
(9, 'delete_customer', 'delete_customer', 'delete_customer'),
(10, 'add_services', 'add_services', 'add_services'),
(11, 'delete_services', 'delete_services', 'delete_services');


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

    INSERT INTO tbl_permission_role (id, permission_id, role_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 1, 2),
(13, 2, 2),
(14, 3, 2),
(15, 4, 2),
(16, 5, 2),
(17, 6, 2),
(18, 7, 2),
(19, 8, 2),
(20, 9, 2),
(21, 10, 2),
(22, 11, 2),
(23, 8, 3),
(24, 10, 3),
(25, 1, 4),
(26, 2, 4),
(27, 3, 4),
(28, 4, 4),
(39, 1, 5),
(40, 2, 5),
(41, 3, 5),
(42, 4, 5),
(43, 5, 5),
(44, 6, 5),
(45, 7, 5),
(46, 8, 5),
(47, 9, 5),
(48, 10, 5),
(49, 11, 5);


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

INSERT INTO tbl_sms_config (smsid, senderid, sms_username, sms_password, auth_key) VALUES
(1, 101, 'username', 'password', 'authkey');
