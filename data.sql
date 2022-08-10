/* Populate database with sample data. */
INSERT INTO
  animals (name)
VALUES
  ('Luna');

INSERT INTO
  animals (name)
VALUES
  ('Daisy');

INSERT INTO
  animals (name)
VALUES
  ('Charlie');

INSERT INTO
  vet_clinic (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attemps
  )
VALUES
  ('Agumon', 'Feb 3 2020', 10.23, true, 0);

INSERT INTO
  vet_clinic (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attemps
  )
VALUES
  ('Gabumon', 'Nov 15 2018', 8, true, 2);

INSERT INTO
  vet_clinic (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attemps
  )
VALUES
  ('Pikachu', 'Jan 7 2021', 15.04, false, 1);

INSERT INTO
  vet_clinic (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attemps
  )
VALUES
  ('Devimon', 'May 12 2017', 11, true, 5);

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Charmander', '02-08-2020', 0, false, -11);

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Plantmon', '11-15-2021', 2, true, -5.7);

SELECT
  *
FROM
  animals;

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Squirtle', '02-04-1993', 3, false, -12.13);

SELECT
  *
FROM
  animals;

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Angemon', '06-12-2005', 1, true, -45);

SELECT
  *
FROM
  animals;

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Boarmon', '06-07-2005', 7, true, 20.4);

SELECT
  *
FROM
  animals;

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Blossom', '10-13-1998', 3, true, 17);

SELECT
  *
FROM
  animals;

INSERT INTO
  public.animals(
    name,
    date_of_birth,
    escape_attemps,
    neutered,
    weight_kg
  )
VALUES
  ('Ditto', '05-14-2022', 4, true, 22);

INSERT INTO
  owners (full_name, age)
VALUES
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

INSERT INTO
  species (name)
VALUES
  ('Pokemon'),
  ('Digimon');

UPDATE
  animals
SET
  species_id = 2
WHERE
  name LIKE '%mon';

UPDATE
  animals
SET
  species_id = (
    SELECT
      id
    FROM
      species
    WHERE
      name = 'Pokemon'
  )
WHERE
  species_id IS NULL;