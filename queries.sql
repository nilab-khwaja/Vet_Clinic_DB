SELECT * FROM animals WHERE name  LIKE '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN  10.5 AND 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT species from animals; 
ROLLBACK;
SELECT species from animals

BEGIN ;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokimon' WHERE species IS NULL;
SELECT species from animals; 
COMMIT;
SELECT species from animals;

BEGIN;
SELECT COUNT(*) FROM ANIMALS;
DELETE FROM animals;
ROLLBACK;
SELECT COUNT(*) FROM ANIMALS;


BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT delete_savepoint;
UPDATE animals SET weight_kg = weight_kg * -1;
 ROLLBACK TO SAVEPOINT delete_savepoint;
  UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
  COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, COUNT(*) AS escape_count  FROM animals WHERE escape_attempts > 0 GROUP BY neutered ORDER BY escape_count DESC LIMIT 1;
 SELECT species , MIN(weight_kg) AS min_weight , MAX(weight_kg) AS  max_weight FROM animals GROUP BY species;
 SELECT species , MIN(weight_kg) AS min_weight , MAX(weight_kg) AS  max_weight FROM animals GROUP BY species;
 SELECT species, AVG(escape_attempts) AS avg_escape_attempts FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;


SELECT a.name FROM animals a JOIN species s ON a.species_id = s.id WHERE s.name = 'Pokemon';
SELECT o.full_name , a.name AS animal_name FROM owners o JOIN animals a ON a.owner_id = o.id;
SELECT s.name, COUNT(a.id) AS animal_count FROM species s LEFT JOIN animals a ON s.id = a.species_id GROUP BY s.name;
SELECT o.full_name ,COUNT(a.id) AS animal_count FROM owners o LEFT JOIN animals a ON a.owner_id = o.id GROUP BY o.full_name ORDER BY animal_count DESC LIMIT 1;
SELECT a.name FROM animals a JOIN owners o ON a.owner_id = o.id WHERE o.full_name = ' Dean Winchester' AND a.escape_attempts = 0;
SELECT a.name FROM animals a JOIN owners o ON a.owner_id = o.id JOIN species s  ON a.species_id = s.id WHERE  o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';