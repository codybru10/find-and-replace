require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @winner = (params.fetch('user1')).beats?((params.fetch('user2')))
  erb(:result)
end

# @user1 = params.fetch('user1')
# @user2 = params.fetch('user2')
# @winner = @user1.beats?(@user2)
# erb(:result)
