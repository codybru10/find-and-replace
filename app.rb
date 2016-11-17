require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = (params.fetch('input_sentence')).find_and_replace((params.fetch('input_word')), (params.fetch('input_replace')))
  erb(:result)
  @counter = (params.fetch('input_sentence')).counter((params.fetch('input_word')))
  erb(:result)
end

# @user1 = params.fetch('user1')
# @user2 = params.fetch('user2')
# @winner = @user1.beats?(@user2)
# erb(:result)

# @input_sentence = params.fetch('input_sentence')
# @input_word = params.fetch('input_word')
# @input_replace = params.fetch('input_replace')
