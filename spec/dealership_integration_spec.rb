require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application

describe('when using the dealership site', { :type => :feature }) do
  it('shows the index page should have two buttons') do
    visit '/'
    expect(page).to have_content('Add a Dealership')
    expect(page).to have_content('View Dealerships')
  end
end


describe('when viewing dealerships page', { :type => :feature }) do
  it('shows a list of dealerships') do
    visit '/dealerships'
    expect(page).to have_content('Dealership List')
  end
end

describe('when adding a dealership page', { :type => :feature }) do
  it('redirects to page with updated dealership listing when user adds a dealership') do
    visit '/dealership_form'
    fill_in 'dealership_name', with: 'Tim\'s Dealers'
    click_button 'Add'
    expect(page).to have_content('Dealership List')
    expect(page).to have_content('Tim\'s Dealers')
  end
end

describe('when viewing an individual dealer page', { :type => :feature }) do
  it('shows a list of cars the dealer own') do
    visit '/dealerships/1'
    expect(page).to have_content('Car Listing')
  end
end
