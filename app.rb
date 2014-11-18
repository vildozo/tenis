require 'sinatra'

get '/' do
  erb :bienvenido
end

post '/jugar' do
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	@puntos1=params[:puntos1]
	@puntos2=params[:puntos2]
	@punto_tenis={0=>"0",1=>"15",2=>"30",3=>"40",4=>"Deuce",5=>"A"}
  erb :jugar
end