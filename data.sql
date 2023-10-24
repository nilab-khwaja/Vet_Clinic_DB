insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
('Agumon', '2020-02-03', 0, true, 10.23), ('Gambumon', '2018-11-15', 2, true, 8),('Pikachu', '2021-01-07', 1, false, 15.04), ('Devimon', '2017-3-12', 5, true, 11);

INSERT INTO animals (name,date_of_birth, escape_attempts, neutered, weight_kg) VALUES
 ('Charmander', '2022-2-8', 0, false, -11), ('Plantmon', '2021-11-15', 2, true, -5.7),
 ('Squirtle', '1993-4-2', 3, false, -12.13), ('Angemon', '2005-6-12', 1,true, -45),
  ('Boarmon', '2005-6-7',7,true, 20.4), ('Blossom', '1998-10-13', 3, true, 17), 
  ('Ditto', '2022-5-14', 4, true, 22);

  INSERT INTO vets(name,age,date_of_graduation) VALUES ('Vet William Tatcher', 45, '2000-04-23'), ('Vet Maisy Smith', 26, '2019-01-17'), ('Vet Stephanie Mendez',64, '1981-05-04'), ('Jack Harkness', 38, '2008-06-08');

  INSERT INTO visits (animal_id, vet_id , visit_date) VALUES (1,1,'2020-05-24'), (1,3, '2020-07-22'), (2,4,'2021-02-02'), (3,2,'2020-01-05'), (3,2,'2020-03-08'), (3,2,'2020-05-14'), (4,3,'2021-05-04'), (6,2,'2019-12-21'), (6,1,'2020-08-10'),(6,2, '2021-04-07'), (7,3,'2019-09-29'), (8,4,'2020-10-03'), (8,4,'2020-11-04'), (9,2,'2019-01-24'), (9,2,'2019-05-15'),(9,2,'2020-02-20'), (9,2,'2020-08-03'), (10,3,'2020-05-24'), (10,1,'2021-01-11');