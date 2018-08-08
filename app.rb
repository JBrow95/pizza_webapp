require 'sinatra'
require_relative 'pizza_app.rb'

enable :sessions

get '/' do
  
  erb :dashboard
end

get '/custom' do
	order = session[:order] || ""
	erb :custom, locals:{order: order, meats: meats, veggies: veggies}
end

post '/order' do
	size = params[:size] || []
	crust = params[:crust] || []
	veggies = params[:veggies] || []
	meats = params[:meats] || []
	session[:order] = order(crust, veggies, meats, size)
	redirect '/result'
end

get '/result' do
	order = session[:order] || ""
	erb :result, locals:{order: order}
end

post '/delivery' do
	first = params[:first]
	session[:name] = params[:first]
	redirect '/delivery?first=' + first
end

get '/delivery' do
	first = params[:first]
	erb :delivery, locals:{first: first}
end

post '/final' do
	first = params[:first]
	address = params[:address]
	redirect '/final?address=' + address + "&first=" + first
end

get '/final' do
	first = params[:first]
	order = session[:order] || []
	address = params[:address]
	erb :final, locals:{address: address, order: order, first: first}
end

get '/carry' do
	first = params[:name] || ""
	order = session[:order] || []
	p "#{first}"
	erb :carry, locals:{order: order, first: first}
end