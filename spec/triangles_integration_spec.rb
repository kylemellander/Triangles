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

  it('successfully displays the length of the sides') do
    visit('/')
    fill_in('side_a', :with => "4")
    fill_in('side_b', :with => "5")
    fill_in('side_c', :with => "5")
    click_button('Submit')
    expect(page).to have_content('Side A: 4')
    expect(page).to have_content('Side B: 5')
    expect(page).to have_content('Side C: 5')
  end

  it('successfully draws a triangle on results') do
    visit('/')
    fill_in('side_a', :with => "100")
    fill_in('side_b', :with => "200")
    fill_in('side_c', :with => "300")
    click_button('Submit')
    expect(page).to have_css('triangle')
  end
end
