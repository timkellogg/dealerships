require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application

describe('when using the dealership site', { :type => :feature }) do

  it('the index page should have two buttons') do
    visit '/'
    expect(page).to have_content('Add a Dealership')
    expect(page).to have_content('View Dealerships')
  end
end


describe('when viewing dealerships page', { :type => :feature }) do
  it('') do
    visit '/dealerships'
    expect(page).to have_content('Dealership List')
  end
end
