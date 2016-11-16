require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#it is running a spec to make sure the paths between layout, index, and result.
describe('the find and replace path', {:type => :feature}) do
  it('searches a sentence for a specific word and replaces word') do
    visit('/')
    fill_in('sentence', :with => 'hi cat' )
    fill_in('word', :with => 'cat')
    fill_in('replace', :with => 'dog')
    click_button('Submit')
    expect(page).to have_content("hi dog")
  end
end
