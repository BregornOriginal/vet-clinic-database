/* Database schema to keep the structure of entire database. */
CREATE TABLE IF NOT EXISTS public.vet_clinic (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    name character varying(100) COLLATE pg_catalog."default",
    date_of_birth date,
    escape_attemps integer,
    neutered boolean,
    weight_kg numeric,
    species character varying(100) COLLATE pg_catalog."default"
);