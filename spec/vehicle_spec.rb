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

  describe('.all') do
    it('returns the array of saved vehicles') do
      expect(Vehicle.all).to eq([])
    end
  end

  describe('#save') do
    it('saves the vehicle in the class wide vehicle array') do
      @test_vehicle.save()
      expect(Vehicle.all).to eq([@test_vehicle])
    end
  end

  describe('.clear') do
    it('clears out all of the vehicles in the array') do
      Vehicle.clear()
      expect(Vehicle.all()).to eq([])
    end
  end

  describe('#age') do
    it('returns the age of the vehicle') do
      expect(@test_vehicle.age).to eq(3)
    end
  end

  describe('#id') do
    it('returns the vehicle by its id') do
      expect(@test_vehicle.id).to eq(1)
    end
  end

end
