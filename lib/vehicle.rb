class Vehicle

  @@vehicles = Array.new
  attr_reader :make, :model, :year, :id

  define_method(:initialize) do | make, model, year |
    @make  = make
    @model = model
    @year  = year
    @id    = @@vehicles.length + 1
  end


  define_singleton_method(:all) do
    @@vehicles
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = Array.new
  end

  define_method(:age) do
    @age = Time.new.year - @year
    if @age < 1
      @age = 1
    else
      @age
    end
  end

end
