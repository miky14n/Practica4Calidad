require 'selenium-webdriver'

Given('Estoy en la vista de crear cuenta') do
  visit('https://testing-start.web.app/register')
  puts "Register page lauched successfully"
end

When('Ingreso los siguientes datos al formulario') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    when "Nombre:"
      find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(1) > div > input').set(value)
    when "Apellido:"
      find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(2) > div > input').set(value)
    when "Correo:"
      find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(3) > div > input').set(value)
    when "Numero de celular:"
      find(:css, '#phone-input').set(value)
    when "Contraseña:"
      find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(5) > div > input').set(value)
    when "Confirmar contraseña:"
      find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(6) > div > input').set(value)
    end
  end
end

When('Clickeo el boton de {string}') do |string|
  find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss15 > button > span.MuiButton-label').click()
end

Then('El boton {string} deberia estar deshabilitado') do |string|
  find(:button, disabled: true, type: 'submit')
end

Then('Vere un mensaje de alerta que dice {string}') do |string|
  find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > div > div.MuiAlert-message')
end

When('I add {string} in {field} field') do |string, field|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I will see an alert that says {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When('Dejo el campo {string} vacio') do |string|
  value = ""
  field = ""
  case string
  when "Nombre"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(1) > div > input')
  when "Apellido"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(2) > div > input')
  when "Correo"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(3) > div > input')
  when "Numero de celular"
    field = find(:css, '#phone-input').set(value)
  when "Contraseña"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(5) > div > input')
  when "Confirmar contraseña"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(6) > div > input')
  end
  field.value.length.times { field.send_keys [:backspace] }
end