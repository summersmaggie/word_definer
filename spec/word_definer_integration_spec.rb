require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('processes the user entry and returns the word') do
    visit('/')
    fill_in('word', :with => "hello")
    click_button('Add to my list!')
    expect(page).to have_content("hello")
  end

  it('processes the user entry and returns the definition') do
    visit('/output/:id')
    fill_in('definition', :with => "a way to welcome someone")
    click_button('Add a definition!')
    expect(page).to have_content("a way to welcome someone")
  end
end
