Given(/^Estoy en la página de Americas Together$/) do
  visit('https://testing-start.web.app/login')
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[1]/div/input').set("coreteam@gmail.com")
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[2]/div/input').set("123456")
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button/span[1]').click
end

Given(/^Le doy click al botón PROYECTOS$/) do
  find(:xpath, '//*[@id="root"]/div[2]/header/div[2]/div/button[2]/span[1]').click
end

Given(/^Le doy click al botón CREAR PROYECTO$/) do
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[1]/div/div[2]/button/span[1]').click
end

Given(/^Presiono el botón CREAR PROYECTO$/) do
  find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[11]/input').click
end

Then(/^Sale texto de error por campo requerido inválido$/) do
  expect(page).to have_content("Error: Campo required")
end

When(/^ingreso los campos requeridos en el formulario$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Nombre:"
    find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[3]/input').set(value)
    @name = value
	when "Descripción:"
		find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[4]/input').set(value)
		@description = value
  when "Fecha de Inicio:"
		find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[1]/input').set(value)
  when "Fecha de Fin:"
		find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[2]/input').set(value)
	when "Objetivo:"
		find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[5]/input').set(value)
	when "Categoría:"
    select(value, :from => find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[7]/div/div/div/div').click)
	when "Información Adicional:"
    find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[9]/input').set(value)
	when "Imagen por Link:"
		find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[10]/input').set(value)
	when "Country:"
		select(value, :from => 'country')
	when "User Name:"
		fill_in 'email', :with => value
		@userName = value
	when "Password:"
		fill_in 'password', :with => value
	when "Confirm Password:"
		fill_in 'confirmPassword', :with => value
		@password = value
	end
  end
end

When(/^send my registration form$/) do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[17]/td/input'
  find(:xpath, xpath_base).click
end

Then(/^the confirmation screen is show$/) do
  greeting = "Dear"+" "+@name+" "+@lastName 	
  expect(page).to have_content(greeting)
  
end

Then(/^my user name is "([^"]*)"$/) do |userName|
  puts userName
  labelText= "Note: Your user name is "+userName+"."
  puts labelText
  expect(page).to have_content(labelText)
  userNameLabel1 = find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
  userNameLabel2 = find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
  if (userNameLabel1 == userNameLabel2) & (labelText == userNameLabel1) & (labelText == userNameLabel2)
    puts "Validation for user name: Passed"    
  else
    raise "Validation for user name: Failed"    
    puts "Expected: "+labelText
    puts "Actual:"+userNameLabel1
  end
  #only for test
  puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
  puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
end

Given(/^Ingreso mi usuario y contraseña$/) do
  fill_in 'Correo', :with => ENV['USER']
  fill_in 'Contraseña', :with => ENV['PSW']
end

When(/^I press the "([^"]*)" button$/) do |arg1|
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input'
  find(:xpath, xpath).click
end


Then(/^the login successfully message is displayed$/) do
    expect(page).to have_content("Login Successfully")
    puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(1) > font > b').text
    puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[1]/font/b').text
end


When(/^I press the Submit button$/) do
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
  find(:xpath, xpath).click
end
