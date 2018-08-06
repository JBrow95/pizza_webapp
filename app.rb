require 'sinatra'
require_relative 'pizza_app.rb'

enable :sessions

get '/' do 
  
  erb :dashboard
end

get '/custom' do
	order = session[:order] || ""
	erb :custom, locals:{order: order}
end

post '/order' do
	size = params[:size]
	crust = params[:crust] 
	veggies = params[:veggies]
	meats = params[:meats]
	session[:order] = order(crust, veggies, meats, size)
	redirect '/result'
end

get '/result' do
	order = session[:order] || ""
	erb :result, locals:{order: order}
end

get '/contact' do

	erb :contact
end