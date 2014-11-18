require 'sinatra'

get '/' do
  erb :bienvenido
end

post '/jugar' do
	@punto=0
	@anota=params[:anota]
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	@puntos1=params[:puntos1]
	@puntos2=params[:puntos2]
	@ganador=params[:ganador]
	

	if @puntos1=="5" && @puntos2=="5"
			@puntos1="4"
			@puntos2="4"
	end

	if @anota=="1"
		@puntos=@puntos1.to_i
		@puntos+=1
		@puntos1=@puntos.to_s

		
	elsif @anota=="2"
		@puntos=@puntos2.to_i
		@puntos+=1
		@puntos2=@puntos.to_s
		if @puntos1=="6" && @puntos2=="6"
			@puntos1="5"
			@puntos2="5"
		end

	end
	if @puntos1=="3" && @puntos2=="3" 
		@puntos1="5"
		@puntos2="5"
	end
	if @puntos1=="5" || @punto1=="7"
		redirect "/ganador"
	end
	if @puntos2=="5" || @punto2=="7"
		redirect "/ganador2"
	end
		
	@punto_tenis={0=>"0",1=>"15",2=>"30",3=>"40",4=>"Ganador",5=>"Deuce",6=>"A",7=>"Ganador"}
  erb :jugar
end


post '/ganador' do
	erb :ganador
end


post '/ganador2' do
	erb :ganador2
end