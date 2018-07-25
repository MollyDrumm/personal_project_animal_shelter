require_relative('../db/sql_runner')

class Adoption

  attr_reader :id, :owner_id, :animal_id, :adoption_date

  def initialize(options)
    @id = options['id'].to_i
    @owner_id = options['owner_id'].to_i
    @animal_id = options['animal_id'].to_i
    @adoption_date = Date.parse(options['adoption_date'])
  end

  def save()
    sql = "INSERT INTO adoptions
    (
      animal_id,
      owner_id,
      adoption_date
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@animal_id, @owner_id, @adoption_date]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end


  def self.all()
    sql = "SELECT * FROM adoptions"
    results = SqlRunner.run( sql )
    return results.map { |adoption| Adoption.new( adoption ) }
  end

  def animal()
    sql = "SELECT * FROM animals
    WHERE id = $1"
    values = [@animal_id]
    results = SqlRunner.run( sql, values )
    return Animal.new( results.first )
  end

  def owner()
    sql = "SELECT * FROM owners
    WHERE id = $1"
    values = [@owner_id]
    results = SqlRunner.run( sql, values )
    return Owner.new( results.first )
  end

  def self.delete_all()
  sql = "DELETE FROM adoptions"
  SqlRunner.run( sql )
end

  def self.delete(id)
     sql = "DELETE FROM adoptions
     WHERE id = $1"
     values = [id]
     SqlRunner.run( sql, values )
  end
end
