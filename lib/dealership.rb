class Dealership

  attr_reader :name

  define_method(:initialize) do | name |
    @name = name
  end
end
