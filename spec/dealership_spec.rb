require 'dealership'
require 'rspec'
require 'vehicle'

describe(Dealership) do

  before() do
    @test_dealership = Dealership.new("Dave's Cars")
    @test_vehicle = Vehicle.new('Make', 'Model', 2012)
    Dealership.clear
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

  describe('#id') do
    it('returns a dealership\'s id') do
      expect(@test_dealership.id).to eq(1)
    end
  end

  describe('.save') do
    it('saves a dealership in the dealerships array') do
      @test_dealership.save
      expect(Dealership.all).to eq([@test_dealership])
    end
  end

  describe('#cars') do
    it('returns all of the cars of the dealership (empty by default)') do
      expect(@test_dealership.cars).to eq([])
    end
  end

  describe('#add_vehicle') do
    it('adds a car into the the cars array') do
      @test_dealership.add_vehicle(@test_vehicle)
      expect(@test_dealership.cars).to eq([@test_vehicle])
    end
  end

  describe('.find') do
    it('returns a dealership by its id') do
      @test_dealership.save
      expect(Dealership.find(1)).to eq(@test_dealership)
    end
  end

  describe('.clear') do
    it('clears the array of all dealerships') do
      Dealership.clear
      expect(Dealership.all).to eq([])
    end
  end

end
