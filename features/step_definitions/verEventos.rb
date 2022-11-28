#Given Pagina de inicio de sesision 
Given(/^Pagina de inicio de sesision$/) do
  page.driver.browser.manage.window.maximize
  visit ('/')
  sleep 2
end
#When Iniciamos sesision con el usuario: "voluntario@gmail.com" y password: "123456"
When(/^Iniciamos sesision con el usuario:"([^"]*)"$ y password: "([^"]*)"$/) do |usuario| 
  fill_in('email',:with => usuario)
end
#And preciono el boton de iniciar sesision
#And preciono el boton de de "Eventos" 
#Then Se muestran los eventos dispobles
