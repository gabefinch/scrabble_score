require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get ('/form') do
  erb(:form)
end

get('/ss_output') do
  @appscore = params.fetch('word').scrabble_score()
  @input = params.fetch('word')
  if params.fetch('word').scrabble_score().>25
    @text = 'Nice work!'
  else
    @text = "Not bad."
  end
  erb(:ss_output)
end
