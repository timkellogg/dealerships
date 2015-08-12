class Dealership

  @@dealerships = Array.new
  attr_reader :name, :id

  define_method(:initialize) do | name |
    @name = name
    @id = @@dealerships.length + 1
  end
end
