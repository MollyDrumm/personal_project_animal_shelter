require_relative('../db/sql_runner')
require('date')

class Animal

  attr_reader :id, :name, :breed, :adoptable, :admission_date

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @breed = options['breed']
    @adoptable = options['adoptable']
    @admission_date = Date.parse(options['admission_date'])
  end

  def save()
    sql = "INSERT INTO animals
    (
      name,
      breed,
      adoptable,
      admission_date
    )
    VALUES
    (
      $1,
      $2,
      $3,
      $4
    )
    RETURNING id"
    values = [@name, @breed, @adoptable, @admission_date]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

    def update()
    sql = "UPDATE animals
    SET
    (
      name,
      breed,
      adoptable,
      admission_date
    ) =
    (
      $1, $2, $3, $4
    )
    WHERE id = $5"
    values = [@name, @breed, @adoptable, @admission_date, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM animals"
    animal_data = SqlRunner.run(sql)
    animals = map_items(animal_data)
    return animals
  end

  def self.map_items(animal_data)
    return animal_data.map { |animal| Animal.new(animal) }
  end

  def self.find(id)
    sql = "SELECT * FROM animals
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    animal = Animal.new(result)
    return animal
  end

  def delete()
    sql = "DELETE FROM animals
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

end
