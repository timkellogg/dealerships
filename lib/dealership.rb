class Dealership

  @@dealerships = Array.new
  attr_reader :name, :id, :cars

  define_method(:initialize) do | name |
    @name = name
    @id = @@dealerships.length + 1
    @cars = Array.new

  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

end
