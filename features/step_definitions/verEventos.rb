#Given Pagina de inicio de sesión 
Given(/^Pagina de inicio de sesión$/) do
  page.driver.browser.manage.window.maximize
  visit ('')
  
end

When('Iniciamos sesión con el usuario {string} y password {string}') do |string, string2|  
  fill_in 'email', :with => string
  fill_in 'password', :with => string2
end

When('preciono el boton de inio de sesion {string}') do |string|
  click_button(string)
  
end

When('preciono el boton de de Evntos {string}') do |string|
  sleep(2)
  click_button(string)
end

Then('Se muestran los eventos dispobles ') do 
  find("MuiPaper-root MuiCard-root jss23 MuiPaper-outlined MuiPaper-rounded").visible?
end

