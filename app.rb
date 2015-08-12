require 'sinatra'
require 'sinatra/reloader'
require './lib/dealership'
require './lib/vehicle'

get('/') do

  if Dealership.all.count < 10
    index = 0
    10.times do
      index += 1
      test_dealership = Dealership.new("dealership#{index}")
      # vehicle = Vehicle.new("Toyota", "Prius", 2009)
      # vehicle.save
      # test_dealership.add_vehicle(vehicle)
      # test_dealership.save
    end
    # puts Dealership.all
  end
  erb(:index)
end

get('/dealerships') do
  @dealerships = Dealership.all
  erb(:dealerships)
end

get('/dealership_form') do
  erb(:dealership_form)
end

post('/dealerships') do
  dealership_name = params.fetch 'dealership_name'
  Dealership.new(dealership_name).save
  @dealerships = Dealership.all
  erb(:dealerships)
end

get('/dealerships/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end

post('/dealerships/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  make  = params.fetch 'make'
  model = params.fetch 'model'
  year  = params.fetch('year').to_i
  vehicle = Vehicle.new(make, model, year)
  vehicle.save
  @dealership.add_vehicle(vehicle)
  erb(:dealership)
end

get('/cars/:id') do
  @dealerships = Dealership.all
  @car = Vehicle.find(params.fetch('id').to_i())
  erb(:car)
end

get('/cars') do
  @dealerships = Dealership.all
  erb(:cars)
end

# get('/*') do
#   erb(:index)
# end
