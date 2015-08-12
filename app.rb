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
    puts Dealership.all
  end
  erb(:index)
end

get('/dealerships') do
  @dealerships = Dealership.all
  erb(:dealerships)
end

get('/dealership_form') do
  
end
