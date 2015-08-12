require 'dealership'
require 'rspec'
require 'vehicle'

describe(Dealership) do

  before() do
    @test_dealership = Dealership.new("Dave's Cars")
    @test_vehicle = Vehicle.new('Make', 'Model', 2012)
  end

  describe('#name') do
    it('returns the name of the dealership') do
      expect(@test_dealership.name).to eq("Dave's Cars")
    end
  end

  describe('.all') do
    it('returns an array of all the dealerships') do
      expect(Dealership.all).to eq([])
    end
  end

  describe('.save') do
    it('saves a dealership in the dealerships array') do
      @test_dealership.save
      expect(Dealership.all).to eq([@test_dealership])
    end
  end

  describe('#id') do
    it('returns a dealership\'s id') do
      expect(@test_dealership.id).to eq(1)
    end
  end

end
