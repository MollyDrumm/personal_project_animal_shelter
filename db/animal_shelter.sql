DROP TABLE adoptions;
DROP TABLE owners;
DROP TABLE animals;

CREATE TABLE animals (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  breed VARCHAR(255),
  adoptable VARCHAR(255),
  admission_date DATE
);

CREATE TABLE owners (
  id SERIAL8 primary key,
  name VARCHAR(255)
);

CREATE TABLE adoptions (
  id SERIAL8 primary key,
  animal_id INT8 REFERENCES animals(id),
  owner_id INT8 REFERENCES owners(id)
);
