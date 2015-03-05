require 'sinatra'

get '/' do
  erb :bienvenido
end

post '/jugar' do
	@punto_tenis={0=>"0",1=>"15",2=>"30",3=>"40",4=>"Deuce",5=>"A",6=>"Ganador"}
	@punto=0
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	@puntos1=params[:puntos1].to_i
	@puntos2=params[:puntos2].to_i
	
	if( (@puntos1==6) || ( @puntos1==4 &&  @puntos2 <= 1) )
		redirect "/ganador"
	else
		if( (@puntos2==6) || ( @puntos2==4 &&  @puntos1 <= 1) )
			redirect "/ganador2"
		end
	end

	if(@puntos2==@puntos1 && @puntos2==5)
		@puntos1=4
		@puntos2=4
	end




		
	
  erb :jugar
end


get '/ganador' do
	erb :ganador
end


get '/ganador2' do
	erb :ganador2
end