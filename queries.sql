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

BEGIN;

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

COMMIT;

-- What animals belong to Melody Pond?
SELECT
  name,
  owner_id,
  full_name
FROM
  animals
  JOIN owners ON owners.id = animals.owner_id
WHERE
  full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).
SELECT
  animals.name,
  species_id,
  species.name
FROM
  animals
  JOIN species ON species.id = animals.species_id
WHERE
  species.name = 'Pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.
SELECT
  full_name,
  name,
  owner_id
FROM
  owners
  LEFT JOIN animals ON animals.owner_id = owners.id;

-- How many animals are there per species?
SELECT
  species.name,
  COUNT(animals.name)
from
  animals
  JOIN species ON species.id = species_id
GROUP BY
  species.name;

-- List all Digimon owned by Jennifer Orwell.
SELECT
  animals.name,
  owner_id,
  species.name,
  full_name
FROM
  animals
  JOIN owners ON owners.id = animals.owner_id
  JOIN species ON species.id = animals.id
WHERE
  full_name = 'Jennifer Orwell';

-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT
  animals.name,
  owner_id,
  escape_attemps,
  full_name
FROM
  animals
  JOIN owners ON owners.id = animals.owner_id
WHERE
  full_name = 'Dean Winchester';

SELECT
  animals.name,
  owner_id,
  escape_attemps,
  full_name
FROM
  animals
  JOIN owners ON owners.id = animals.owner_id
WHERE
  full_name = 'Dean Winchester'
  AND escape_attemps = 0;

-- Who owns the most animals?

SELECT
  full_name,
  COUNT(animals.name) count
from
  animals
  JOIN owners ON animals.owner_id = owners.id
GROUP BY
  full_name
ORDER BY
  count desc
limit
  1;