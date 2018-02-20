require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer.rb')
require('pry')

get('/') do
  @word_list = Word.all()
  erb(:input)
end

post('/') do
  @word = Word.new(params[:word])
  @word.save_word()
  @word_list = Word.all()
  erb(:input)
end

get('/output/:id') do
  @word = Word.find(params[:id])
  @word_list = Word.all()
  erb(:output)
end

post('/output/:id') do
  @word = Word.find(params[:id])
  @word_list = Word.all()

  definition = Definition.new(params[:definition])
  erb(:output)
end
