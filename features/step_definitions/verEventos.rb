#Given Pagina de inicio de sesión 
Given(/^en la página de inicio de sesión$/) do
  page.driver.browser.manage.window.maximize
  visit ('')
end

When('iniciamos sesión con el correo: {string} y contraseña: {string}') do |email, password|  
  fill_in 'email', :with => email
  fill_in 'password', :with => password
end

When('presiono el botón de {string}') do |string|
  sleep(2)
  click_button(string)
end

Then('se muestran los eventos disponibles') do 
  find("MuiPaper-root MuiCard-root jss23 MuiPaper-outlined MuiPaper-rounded").visible?
end

