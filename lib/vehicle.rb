class Vehicle

  attr_reader :make, :model, :year

  define_method(:initialize) do | make, model, year |
    @make = make
    @model = model
    @year = year
  end

  
end
