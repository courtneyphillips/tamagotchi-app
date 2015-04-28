require ('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('tamagotchi initialize path', {:type => :feature}) do
  it('will create a new tamagotchi with user input name') do
    visit('/')
    fill_in('name', :with => 'Professor Octopus')
    click_button("I'm alive!")
    expect(page).to have_content("Congratulations! Here's your new pet:")
  end
end
