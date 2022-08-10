/* Database schema to keep the structure of entire database. */
CREATE TABLE IF NOT EXISTS public.animals (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    name character varying(100) COLLATE pg_catalog."default",
    date_of_birth date,
    escape_attemps integer,
    neutered boolean,
    weight_kg numeric,
    species_id integer,
    owner_id integer,
    CONSTRAINT animals_pkey PRIMARY KEY (id),
    CONSTRAINT owner_id FOREIGN KEY (owner_id) REFERENCES public.owners (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION NOT VALID,
    CONSTRAINT species_id FOREIGN KEY (species_id) REFERENCES public.species (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION NOT VALID
);

CREATE TABLE IF NOT EXISTS public.owners (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    full_name character varying(100) COLLATE pg_catalog."default",
    age character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT owners_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.species (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    name character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT species_pkey PRIMARY KEY (id)
);

added species_id column as foreign key referencing to species table