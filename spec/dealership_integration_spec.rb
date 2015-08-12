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
  before() do
    visit '/dealerships/1'
  end

  it('shows a list of cars the dealer own') do
    expect(page).to have_content('Car Listing')
  end

  it('redirects to page with updated car listing when user adds a car') do
    fill_in 'make',  with: 'Chevy'
    fill_in 'model', with: 'Corvette'
    fill_in 'year',  with: '2015'
    click_button 'Add'
    expect(page).to have_content('Chevy Corvette 2015')
  end
end


describe('when viewing the cars listings of all dealerships', { :type => :feature }) do
  it('prints out a list of all the cars with links to their car pages') do
    visit('/cars')
    expect(page).to have_content 'All Available Cars'
  end
end
