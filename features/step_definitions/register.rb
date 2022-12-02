require 'selenium-webdriver'

Given('estoy en la vista de crear cuenta') do
  visit('https://testing-start.web.app/register')
end

When('ingreso los siguientes datos al formulario') do |table|
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

When('hago click al botón de {string}') do |string|
  find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss15 > button > span.MuiButton-label').click()
end

Then('el botón {string} debería estar deshabilitado') do |string|
  find(:button, disabled: true, type: 'submit')
end

Then('veré un mensaje de alerta que dice {string}') do |string|
  find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > div > div.MuiAlert-message')
end

When('dejo el campo {string} vacío') do |string|
  field = ""
  case string
  when "Nombre"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(1) > div > input')
  when "Apellido"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(2) > div > input')
  when "Correo"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(3) > div > input')
  when "Numero de celular"
    field = find(:css, '#phone-input')
  when "Contraseña"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(5) > div > input')
  when "Confirmar contraseña"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(6) > div > input')
  end
  field.value.length.times { field.send_keys [:backspace] }
end

When('agrego el carácter inválido {string} en el campo {string} de tal manera que se ve {string}') do |string, string2, string3|
  case string2
  when "Nombre"
    find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(1) > div > input').set(string3)
  when "Apellido"
    find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(2) > div > input').set(string3)
  when "Correo"
    find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(3) > div > input').set(string3)
  when "Numero de celular"
    find(:css, '#phone-input').set()
  when "Contraseña"
    find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(5) > div > input').set(string3)
  when "Confirmar contraseña"
    find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(6) > div > input').set(string3)
  end
  puts("Carácter '" + string + "' añadido a " + string2)
end

And('podré ver un mensaje de error justo debajo campo del que diga {string} no válido') do |string|
  valueToCompare = string + " no válido"
  field = ""
  case string
  when "Nombre"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(1) > p')
  when "Apellido"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss11 > div:nth-child(2) > p')
  when "Correo"
    field = find(:css, '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(3) > p')
  end
  expect(field.text).to eql(valueToCompare)
end