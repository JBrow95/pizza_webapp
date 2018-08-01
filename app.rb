require 'sinatra'

get '/' do
  
  erb :dashboard
end

get '/custom' do

	erb :custom
end

post '/order' do

end