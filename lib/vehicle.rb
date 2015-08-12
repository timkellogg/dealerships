class Vehicle

  @@vehicles = Array.new
  attr_reader :make, :model, :year

  define_method(:initialize) do | make, model, year |
    @make = make
    @model = model
    @year = year
  end


  define_singleton_method(:all) do
    @@vehicles
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  

end
