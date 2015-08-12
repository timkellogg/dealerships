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
      test_dealership.save
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
