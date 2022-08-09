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