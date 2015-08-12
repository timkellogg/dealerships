require('rspec')
require('vehicle')

describe(Vehicle) do

  before() do
    @test_vehicle = Vehicle.new("make", "model", 2012)
  end


  describe('#make') do
    it('returns the make of the vehicle') do
      expect(@test_vehicle.make()).to(eq("make"))
    end
  end

  describe('#year') do
    it('returns the year of the vehicle') do
      expect(@test_vehicle.year()).to(eq(2012))
    end
  end

  describe('#model') do
    it('returns the model of the vehicle') do
      expect(@test_vehicle.model()).to(eq("model"))
    end
  end
end
