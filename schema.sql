create database vet_clinic;
create table animals(id SERIAL PRIMARY KEY, name VARCHAR(255), 
date_of_birth DATE, escape_attempts INTEGER, neutered BOOLEAN, weight_kg DECIMAL );