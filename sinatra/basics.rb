require 'rubygems'
require 'sinatra'

get '/' do
	'Hello, world!'
end

get '/about' do
	'About me'
end

get '/hello/:name/:city' do
	"Hello there #{params[:name]} from #{params[:city]}"
end

get '/more/*' do
	params[:splat]
end

get '/form' do
	erb :form
end

post '/form' do
	"You said '#{params[:message]}'"
end