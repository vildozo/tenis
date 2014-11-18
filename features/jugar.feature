Feature: Anotar marcador
	Scenario: Iniciar jugada
		Given inicio del juego con dos jugadores
		Then deberia ver puntaje "0" para jugador1
		And deberia ver puntaje "0" para jugador2


	Scenario: Anoto un primer punto jugador uno
		Given estoy en la pagina jugar
		And deberia ver puntaje "0" para jugador1
		And deberia ver puntaje "0" para jugador2
		When hace clique en "Anota_Jugador1"
		Then deberia ver puntaje "15" para jugador1
		And deberia ver puntaje "0" para jugador2


	Scenario: Anoto un primer punto jugador dos
		Given estoy en la pagina jugar
		And deberia ver puntaje "0" para jugador1
		And deberia ver puntaje "0" para jugador2
		When hace clique en "Anota_Jugador2"
		Then deberia ver puntaje "0" para jugador1
		And deberia ver puntaje "15" para jugador2