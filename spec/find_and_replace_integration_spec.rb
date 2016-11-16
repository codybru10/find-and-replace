# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
# #it is running a spec to make sure the paths between layout, index, and result.
# describe('the rock-paper-scissors path', {:type => :feature}) do
#   it('compares 2 user inputs') do
#     visit('/')
#     fill_in('user1_int', :with => 'rock' )
#     fill_in('user2_int', :with => 'scissors')
#     click_button('Submit')
#     expect(page).to have_content("Player 1")
#   end
# end
