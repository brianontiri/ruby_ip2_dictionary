require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/defination')

get('/') do
  erb(:index)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

get('/words/new') do
  erb(:words_form)
end

post('/words') do
  word = params.fetch("word")
  word = Word.new(word)
  word.save()
  erb(:done)
end

get('/definations/:id') do
  @defination = Defination.find(params.fetch('id'))
  erb(:defination)
end

get('/words/:id') do
  @word = Word.find(params.fetch("id"))
  erb(:word)
end

get('/words/:id/definations/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_definations_form)
end

post('/definations') do
  defination = params.fetch('defination')
  @defination = Defination.new(defination)
  @defination.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_defination(@defination)
  erb(:done)
end
