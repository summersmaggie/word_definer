require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  @word_list = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  new_word = Word.new(word)
  new_word.save()
  @word_list = Word.all()
  erb(:input)
end

get('output/:id') do
  @word = Word.find(params[:id])
  binding.pry
  erb(:output)
end
