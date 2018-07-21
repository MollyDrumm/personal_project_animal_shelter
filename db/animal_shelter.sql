DROP TABLE owners;
DROP TABLE animals;

CREATE TABLE animals (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  breed VARCHAR(255),
  adoptable VARCHAR(255),
  admission_date INT8
);

CREATE TABLE owners (
  id SERIAL8 primary key,
  name VARCHAR(255),
  animal_id INT8 REFERENCES animals(id)
);
