# Tutorial from:
# http://code.tutsplus.com/series/singing-with-sinatra--net-19113

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

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end

get '/decrypt/:secret' do
	params[:secret].reverse
end

not_found do
	halt 404, 'Page not found'
end