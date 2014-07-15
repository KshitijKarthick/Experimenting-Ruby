require 'rubygems'
require 'sinatra'
get '/' do
  "Hello, World!"
end
get '/about' do
  'A little about me.'
end
get '/hello/:name' do 
	"Hello #{params[:name]}"
end	
get '/form' do
	erb :form
end
post '/form' do
	"You Said '#{params[:message]}'"
end
get '/secret' do
	erb :secret
end
post '/secret' do
	params[:secret].reverse
end
get '/decrypt/:secret' do
	"The Decrypted Message is '#{params[:secret].reverse}'"
end
not_found do
  halt 404, 'page not found'
end