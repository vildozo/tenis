Feature: Anotar marcador
	Scenario: Iniciar jugada
		Given inicio del juego con dos jugadores
		Then deberia ver puntaje "0" para jugador1
		And deberia ver puntaje "0" para jugador2