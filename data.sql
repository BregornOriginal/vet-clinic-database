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

UPDATE
  animals
SET
  owner_id = (
    SELECT
      id
    FROM
      owners
    WHERE
      full_name = 'Sam Smith'
  )
WHERE
  name = 'Agumon';

UPDATE
  animals
SET
  owner_id = (
    SELECT
      id
    FROM
      owners
    WHERE
      full_name = 'Jennifer Orwell'
  )
WHERE
  name = ('Gabumon');

UPDATE
  animals
SET
  owner_id = (
    SELECT
      id
    FROM
      owners
    WHERE
      full_name = 'Jennifer Orwell'
  )
WHERE
  name = ('Pikachu');

UPDATE
  animals
SET
  owner_id = (
    SELECT
      id
    FROM
      owners
    WHERE
      full_name = 'Bob'
  )
WHERE
  name = 'Plantmon';

UPDATE
  animals
SET
  owner_id = (
    SELECT
      id
    FROM
      owners
    WHERE
      full_name = 'Melody Pond'
  )
WHERE
  name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE
  animals
SET
  owner_id = (
    SELECT
      id
    FROM
      owners
    WHERE
      full_name = 'Dean Winchester'
  )
WHERE
  name IN ('Angemon', 'Boarmon');

INSERT INTO
  vets (name, age, date_of_graduation)
VALUES
  ('Maisy Smith', 26, '06-17-2019'),
  ('Stephanie Mendez', 64, '05-04-1981'),
  ('William Tatcher', 45, '04-23-2000'),
  ('JAck Harkness', 38, '06-08-2008');

INSERT INTO
  specializations
SELECT
  species.id,
  vets.id
FROM
  species
  JOIN vets ON vets.name = 'William Tatcher'
  and species.name = 'Pokemon';

INSERT INTO
  specializations
SELECT
  species.id,
  vets.id
FROM
  species
  JOIN vets ON vets.name = 'Stephanie Mendez'
  and species.name = 'Digimon';

INSERT INTO
  specializations
SELECT
  species.id,
  vets.id
FROM
  species
  JOIN vets ON vets.name = 'Stephanie Mendez'
  and species.name = 'Pokemon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '05-24-2020'
FROM
  animals
  JOIN vets ON vets.name = 'William Tatcher'
  and animals.name = 'Agumon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '07-22-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Stephanie Mendez'
  and animals.name = 'Agumon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '02-02-2021'
FROM
  animals
  JOIN vets ON vets.name = 'Jack Harkness'
  and animals.name = 'Gabumon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '01-05-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Pikachu';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '03-08-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Pikachu';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '05-14-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Pikachu';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '05-04-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Stephanie Mendez'
  and animals.name = 'Devimon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '02-24-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Jack Harkness'
  and animals.name = 'Charmander';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '12-21-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Plantmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '08-10-2020'
FROM
  animals
  JOIN vets ON vets.name = 'William Tatcher'
  and animals.name = 'Plantmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '04-07-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Plantmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '09-29-2019'
FROM
  animals
  JOIN vets ON vets.name = 'Stephanie Mendez'
  and animals.name = 'Squirtle';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '10-03-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Jack Harkness'
  and animals.name = 'Angemon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '11-04-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Jack Harkness'
  and animals.name = 'Angemon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '01-24-2019'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Boarmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '05-15-2019'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Boarmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '02-27-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Boarmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '08-03-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Maisy Smith'
  and animals.name = 'Boarmon';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '05-24-2020'
FROM
  animals
  JOIN vets ON vets.name = 'Stephanie Mendez'
  and animals.name = 'Blossom';

INSERT INTO
  visits
SELECT
  animals.id,
  vets.id,
  '01-11-2021'
FROM
  animals
  JOIN vets ON vets.name = 'William Tatcher'
  and animals.name = 'Blossom';