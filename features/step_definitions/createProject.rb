Given(/^Estoy en la página de Americas Together$/) do
  visit('https://testing-start.web.app/login')
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[1]/div/input').set("coreteam@gmail.com")
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[2]/div/input').set("123456")
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button/span[1]').click
end

Given(/^presiono el botón PROYECTOS$/) do
  find(:xpath, '//*[@id="root"]/div[2]/header/div[2]/div/button[2]/span[1]').click
end

Given(/^presiono el botón CREAR PROYECTO$/) do
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[1]/div/div[2]/button/span[1]').click
end

Given(/^presiono el botón {string} en el formulario$/) do |string|
  #find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[11]/input').click
  click_button(string)
end

Then(/^sale un texto de error: campo requerido inválido$/) do
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