require_relative('../db/sql_runner')

class Adoption

  def initialize(options)
    @id = options['id'].to_i
    @owner_id = options['owner_id'].to_i
    @animal_id = options['animal_id'].to_i
  end

  def save()
    sql = "INSERT INTO adoptions
    (
      animal_id,
      owner_id
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@animal_id, @owner_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end
end
