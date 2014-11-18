Feature: Se acabo el juego hay un ganador
	Scenario:  hay un ganador
		Given estoy en la pagina ganador
		Then deberia ver el nombre del ganador "ganador"
		And deberia ver "puntaje_final"
		