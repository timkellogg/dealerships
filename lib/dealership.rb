class Dealership

  @@dealerships = Array.new
  attr_reader :name, :id

  define_method(:initialize) do | name |
    @name = name
    @id = @@dealerships.length + 1
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:save) do
    @@dealerships.push(self)
  end
  
end
