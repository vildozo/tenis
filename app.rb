require 'sinatra'

get '/' do
  erb :bienvenido
end

post '/jugar' do
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
  erb :jugar
end