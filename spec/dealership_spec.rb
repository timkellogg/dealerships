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

end
