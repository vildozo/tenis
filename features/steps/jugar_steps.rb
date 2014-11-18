Given(/^inicio del juego con dos jugadores$/) do
  visit '/'
  fill_in("jugador1", :with => "Nombre_Jugador1")
  fill_in("jugador2", :with => "Nombre_Jugador2")
  click_button("Jugar")
  #visit '/jugar'
end

Then(/^deberia ver puntaje "(.*?)" para jugador(\d+)$/) do |puntaje, nro_jugador|
  last_response.body.should include =~ /id="marcadorJugador#{nro_jugador}">#{puntaje}/m
end

Given(/^estoy en la pagina jugar$/) do
  visit '/'
  click_button("Jugar")
  #visit '/jugar'
end


When(/^hace clique en "(.*?)"$/) do |boton|
  click_button(boton)
end
