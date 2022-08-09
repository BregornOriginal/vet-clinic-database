/*Queries that provide answers to the questions from all projects.*/
SELECT
  *
from
  animals
WHERE
  name = 'Luna';

SELECT
  *
FROM
  vet_clinic
WHERE
  name LIKE '%mon';

SELECT
  name
FROM
  vet_clinic
WHERE
  date_of_birth BETWEEN '2016-01-01'
  and '2019-12-30';

SELECT
  name
FROM
  vet_clinic
WHERE
  neutered IN (true)
  AND escape_attemps < 3;

SELECT
  date_of_birth
FROM
  vet_clinic
WHERE
  name IN ('Agumon', 'Pikachu');

SELECT
  name,
  escape_attemps
FROM
  vet_clinic
WHERE
  weight_kg > 10.5;

SELECT
  *
FROM
  vet_clinic
WHERE
  neutered IN ('true');

SELECT
  *
FROM
  vet_clinic
WHERE
  name != ('Gabumon');

SELECT
  *
FROM
  vet_clinic
WHERE
  weight_kg >= 10.4
  AND weight_kg <= 17.3;

SELECT
  COUNT(name)
FROM
  animals;

SELECT
  COUNT(name)
FROM
  animals
WHERE
  escape_attemps = 0;

SELECT
  AVG(weight_kg)
FROM
  animals;

SELECT
  neutered,
  MAX(escape_attemps)
FROM
  animals
GROUP BY
  neutered;

SELECT
  species,
  MAX(weight_kg),
  MIN(weight_kg)
FROM
  animals
GROUP BY
  species;

SELECT
  species,
  date_of_birth,
  AVG(escape_attemps)
FROM
  animals
WHERE
  date_of_birth BETWEEN '1990-01-01'
  AND '2000-12-31'
GROUP BY
  species,
  date_of_birth;