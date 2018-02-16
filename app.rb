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
  @word = params["word"]
  new_word = Word.new(@word)
  new_word.save()
  @word_list = Word.all()
  erb(:input)
end

get('/output/:id') do
  @word_to_define = Word.find(params[:id])
  @definition_for_word = Definition.find(params[:id])

  @word_to_display = @word_to_define.word
  @definition_list = Definition.all()
  erb(:output)
end

post('/output/:id') do
  @word_to_define = Word.find(params[:id])
  @definition = params["definition"]
  new_definition = Definition.new(@definition)
  new_definition.save_definition()

  @definition_list = Definition.all()

  @definition_list.each do |definition|
    if @word_to_define.id == @definition_for_word.id
      binding.pry
      return @definition
    end
  end

  erb(:output)
end
