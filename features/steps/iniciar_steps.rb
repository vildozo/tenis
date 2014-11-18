Given(/^me encuentro en la pagina principal$/) do
	visit '/'
end

Given(/^llenar el campo "(.*?)" con "(.*?)"$/) do |jugador1, valor1|
  fill_in(jugador1, :with => valor1)
end

When(/^presiono el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^deberia ver "(.*?)"$/) do |mensaje|
   expect(last_response.body).to include(mensaje)
end




