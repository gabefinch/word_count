require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/fullword_count')

get ('/form') do
  erb(:form)
end

get ('/result') do
  input = params.fetch('input')
  query = params.fetch('query')
  @input = input
  @query = query
  @count = input.fullword_count(query)
  erb(:result)
end
