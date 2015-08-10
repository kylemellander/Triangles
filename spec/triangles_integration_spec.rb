require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("triangle path", {:type => :feature}) do
  it('will pull up index page') do
    visit('/')
    expect(page).to have_content('Triangle')
  end

  it('successfully goes to results page if input is given') do
    visit('/')
    fill_in('side_a', :with => "5")
    fill_in('side_b', :with => "5")
    fill_in('side_c', :with => "5")
    click_button('Submit')
    expect(page).to have_content('This is an equilateral triangle.')
  end

end
