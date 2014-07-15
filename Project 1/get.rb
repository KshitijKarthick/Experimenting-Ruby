require 'sinatra'
require 'rubygems'
get '/hello/:name' do |n|
  "Hello #{n}!"
end