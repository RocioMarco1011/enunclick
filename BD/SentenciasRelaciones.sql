-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.adstable
(
    ads_id integer NOT NULL,
    ads_names character varying COLLATE pg_catalog."default",
    ads_descriptions text COLLATE pg_catalog."default",
    ads_start_dates date,
    ads_end_dates date,
    CONSTRAINT pk_adstable PRIMARY KEY (ads_id)
);

CREATE TABLE IF NOT EXISTS public.costumerstable
(
    costumer_id integer NOT NULL,
    costumer_names character varying COLLATE pg_catalog."default",
    costumer_addresses character varying COLLATE pg_catalog."default",
    costumer_gps text COLLATE pg_catalog."default",
    costumer_phones integer,
    CONSTRAINT pk_costumerstable PRIMARY KEY (costumer_id)
);

CREATE TABLE IF NOT EXISTS public.dailyregisterstable
(
    register_id integer NOT NULL,
    register_status character varying COLLATE pg_catalog."default",
    daily_initial_cashes integer,
    daily_final_cashes integer,
    register_dates date,
    CONSTRAINT pk_dailyregisterstable PRIMARY KEY (register_id)
);

CREATE TABLE IF NOT EXISTS public.deliveriestable
(
    delivery_man_id integer NOT NULL,
    delivery_man_names character varying COLLATE pg_catalog."default",
    delivery_man_schedules text COLLATE pg_catalog."default",
    delivery_man_days text COLLATE pg_catalog."default",
    CONSTRAINT pk_deliveriestable PRIMARY KEY (delivery_man_id)
);

CREATE TABLE IF NOT EXISTS public.logisticstable
(
    logistics_id integer NOT NULL,
    CONSTRAINT pk_logisticstable PRIMARY KEY (logistics_id)
);

CREATE TABLE IF NOT EXISTS public.offerstable
(
    offers_id integer NOT NULL,
    offer_names character varying COLLATE pg_catalog."default",
    offer_descriptions text COLLATE pg_catalog."default",
    offer_start_dates date,
    offer_final_dates date,
    offer_prices integer,
    CONSTRAINT pk_offerstable PRIMARY KEY (offers_id)
);

CREATE TABLE IF NOT EXISTS public.orderstable
(
    orders_id integer NOT NULL,
    order_addresses character varying COLLATE pg_catalog."default",
    refernces character varying COLLATE pg_catalog."default",
    dates date,
    times time without time zone,
    fees integer,
    status character varying COLLATE pg_catalog."default",
    orders_gps text COLLATE pg_catalog."default",
    CONSTRAINT pk_orderstable PRIMARY KEY (orders_id)
);

CREATE TABLE IF NOT EXISTS public.paymentstable
(
    payment_id integer NOT NULL,
    payment_methods character varying COLLATE pg_catalog."default",
    payment_receipts text COLLATE pg_catalog."default",
    CONSTRAINT pk_paymentstable PRIMARY KEY (payment_id)
);

CREATE TABLE IF NOT EXISTS public.preferencetables
(
    preferents_id integer NOT NULL,
    preferent_descriptions text COLLATE pg_catalog."default",
    preferent_fees integer,
    CONSTRAINT pk_preferencetables PRIMARY KEY (preferents_id)
);

CREATE TABLE IF NOT EXISTS public.productstable
(
    order_id integer NOT NULL,
    order_quantities integer,
    order_descriptions text COLLATE pg_catalog."default",
    order_prices integer,
    CONSTRAINT pk_productstable PRIMARY KEY (order_id)
);

CREATE TABLE IF NOT EXISTS public.rolestable
(
    roles_id integer NOT NULL,
    roles character varying COLLATE pg_catalog."default",
    CONSTRAINT pk_rolestable PRIMARY KEY (roles_id)
);

CREATE TABLE IF NOT EXISTS public.supplierstable
(
    supplier_id integer NOT NULL,
    supplier_names character varying COLLATE pg_catalog."default",
    supplier_addresses character varying COLLATE pg_catalog."default",
    supplier_phones integer,
    CONSTRAINT pk_supplierstable PRIMARY KEY (supplier_id)
);

CREATE TABLE IF NOT EXISTS public.userstable
(
    users_id integer NOT NULL,
    users character varying COLLATE pg_catalog."default",
    passwords character varying COLLATE pg_catalog."default",
    CONSTRAINT pk_userstable PRIMARY KEY (users_id)
);

CREATE TABLE IF NOT EXISTS public.zonestable
(
    zones_id integer NOT NULL,
    initial_zones text COLLATE pg_catalog."default",
    final_zones text COLLATE pg_catalog."default",
    descriptions text COLLATE pg_catalog."default",
    CONSTRAINT pk_zonestable PRIMARY KEY (zones_id)
);

CREATE TABLE IF NOT EXISTS public.orderstable_logisticstable
(
    orderstable_orders_id integer NOT NULL,
    logisticstable_logistics_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.zonestable_logisticstable
(
    zonestable_zones_id integer NOT NULL,
    logisticstable_logistics_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.logisticstable_deliveriestable
(
    logisticstable_logistics_id integer NOT NULL,
    deliveriestable_delivery_man_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.userstable_rolestable
(
    userstable_users_id integer NOT NULL,
    rolestable_roles_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.costumerstable_adstable
(
    costumerstable_costumer_id integer NOT NULL,
    adstable_ads_id integer NOT NULL
);

ALTER TABLE IF EXISTS public.costumerstable
    ADD FOREIGN KEY (costumer_id)
    REFERENCES public.orderstable (orders_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.costumerstable
    ADD FOREIGN KEY (costumer_id)
    REFERENCES public.paymentstable (payment_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.dailyregisterstable
    ADD FOREIGN KEY (register_id)
    REFERENCES public.deliveriestable (delivery_man_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.preferencetables
    ADD FOREIGN KEY (preferents_id)
    REFERENCES public.costumerstable (costumer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.productstable
    ADD FOREIGN KEY (order_id)
    REFERENCES public.offerstable (offers_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.productstable
    ADD FOREIGN KEY (order_id)
    REFERENCES public.supplierstable (supplier_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.productstable
    ADD FOREIGN KEY (order_id)
    REFERENCES public.orderstable (orders_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.userstable
    ADD FOREIGN KEY (users_id)
    REFERENCES public.deliveriestable (delivery_man_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.orderstable_logisticstable
    ADD FOREIGN KEY (orderstable_orders_id)
    REFERENCES public.orderstable (orders_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.orderstable_logisticstable
    ADD FOREIGN KEY (logisticstable_logistics_id)
    REFERENCES public.logisticstable (logistics_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.zonestable_logisticstable
    ADD FOREIGN KEY (zonestable_zones_id)
    REFERENCES public.zonestable (zones_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.zonestable_logisticstable
    ADD FOREIGN KEY (logisticstable_logistics_id)
    REFERENCES public.logisticstable (logistics_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.logisticstable_deliveriestable
    ADD FOREIGN KEY (logisticstable_logistics_id)
    REFERENCES public.logisticstable (logistics_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.logisticstable_deliveriestable
    ADD FOREIGN KEY (deliveriestable_delivery_man_id)
    REFERENCES public.deliveriestable (delivery_man_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.userstable_rolestable
    ADD FOREIGN KEY (userstable_users_id)
    REFERENCES public.userstable (users_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.userstable_rolestable
    ADD FOREIGN KEY (rolestable_roles_id)
    REFERENCES public.rolestable (roles_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.costumerstable_adstable
    ADD FOREIGN KEY (costumerstable_costumer_id)
    REFERENCES public.costumerstable (costumer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.costumerstable_adstable
    ADD FOREIGN KEY (adstable_ads_id)
    REFERENCES public.adstable (ads_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;