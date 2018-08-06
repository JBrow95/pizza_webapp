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
	veggies2 = params[:veggies]
	veggies3 = params[:veggies]
	veggies4 = params[:veggies]
	meats = params[:meats]
	session[:order] = order(crust, veggies, veggies2 , veggies3, veggies4, meats, size)
	redirect '/result'
end

get '/result' do
	order = session[:order] || ""
	erb :result, locals:{order: order}
end

post '/order2' do
	redirect '/delivery'
end

get '/delivery' do

	erb :delivery
end
