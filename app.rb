require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/albums')
# require('./lib/artist')

get('/') do
  erb(:index)
end

get('/albums') do
  @albums = Albums.all()
  erb(:album_list)
end

get('/albums/new') do
   erb(:album_form)
end

post('/albums') do
  title = params.fetch('title')
  album = Albums.new(title)
  album.save()
  erb(:success)
end

get('/albums/:id') do
  @album = Albums.find(params.fetch('id').to_i())
  erb(:album)
end
