require 'pry'

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

  define_method(:add_vehicle) do | vehicle |
    @cars.push(vehicle)
  end

  define_singleton_method(:find) do | number |
    found_dealership = nil
    @@dealerships.each do | dealership |
      if dealership.id == number
        found_dealership = dealership
      end
    end
    found_dealership
  end

  define_singleton_method(:clear) do
    @@dealerships = Array.new
  end

  define_singleton_method(:find_car) do | id_number |
    @found_dealership = nil
    @@dealerships.each do | dealership |

      dealership.cars.each do | car |
        if car.id == id_number
          @found_dealership = dealership
    
        end
      end
    end
    @found_dealership
  end

end
