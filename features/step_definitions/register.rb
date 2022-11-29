require 'selenium-webdriver'

Given('I am in register page') do
  $browser.goto 'https://testing-start.web.app/register'
  puts "Register page lauched successfully"
end
#| Nombre | Apellido | Correo                 | Numero_celular | Contraseña     | Confirmar_contraseña |
When('I enter the following data') do |table|
  cssSelectorDict = {
    'Nombre' => '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss30.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss28 > div:nth-child(1) > div > input',
    'Apellido' => '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss30.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss28 > div:nth-child(2) > div > input',
    'Correo' => '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss30.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(3) > div > input',
    'Numero_celular' => '#phone-input',
    'Contraseña' => '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(5) > div > input',
    'Confirmar_contraseña' => '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div:nth-child(6) > p'
  }
  data = table.hashes
  print(data[0]['Nombre'])
  input[placeholder = 'Nombre *'].set(data[0]['Nombre'])
end

When('I click the {string} button') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I will see an alert message which says {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I will not see an alert message') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I add {string} in Nombre field') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I will see an alert that says {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end