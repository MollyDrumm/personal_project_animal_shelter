require_relative('../db/sql_runner')

class Owner

  attr_reader :id, :first_name, :last_name, :email, :address

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @email = options['email']
    @address = options['address']
  end

  def save()
    sql = "INSERT INTO owners
    (
      first_name,
      last_name,
      email,
      address
    )
    VALUES
    (
      $1,
      $2,
      $3,
      $4
    )
    RETURNING id"
    values = [@first_name, @last_name, @email, @address]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

  def full_name()
    return "#{@first_name} #{@last_name}"
  end


  def self.find(id)
    sql = "SELECT * FROM owners
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql ,values).first
    owner = Owner.new(result)
    return owner
  end

  def self.all()
    sql = "SELECT * FROM owners"
    owner_data = SqlRunner.run(sql)
    owners = map_items(owner_data)
    return owners
  end

  def self.map_items(owner_data)
    return owner_data.map { |owner| Owner.new(owner) }
  end

  def self.delete_all()
  sql = "DELETE FROM owners"
  SqlRunner.run( sql )
end

  def delete()
    sql = "DELETE FROM owners
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end
end
