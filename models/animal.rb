require_relative('../db/sql_runner')

class Animal

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @breed = options['breed']
    @adoptable = options['adoptable']
  end
end
