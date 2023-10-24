create database vet_clinic;
create table animals(id SERIAL PRIMARY KEY, name VARCHAR(255), 
date_of_birth DATE, escape_attempts INTEGER, neutered BOOLEAN, weight_kg DECIMAL );
ALTER TABLE animals ADD species VARCHAR(50);


CREATE TABLE owners(id SERIAL PRIMARY KEY, full_name VARCHAR(50), age INT );
CREATE TABLE species(id SERIAL PRIMARY KEY, name VARCHAR(50), );
ALTER TABLE animals DROP COLUMN IF EXISTS species;
ALTER TABLE animals ADD COLUMN species_id INT REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id INT REFERENCES owners(id);
