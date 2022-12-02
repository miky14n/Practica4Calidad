Feature: Comprobar el inicio de sesión con los diferentes roles
  En la pagina de iniciar sesión 
  Como un usuario registrado
  Quiero iniciar sesión
@lider
Scenario: Iniciar sesión como Lider
    Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "voluntario@gmail.com" y contraseña: "123456"
    And presiono el botón de "Iniciar Sesión"
    And preciono el boton de de Evntos "Eventos" 
    Then Se muestran el boton de crear evento "Crear Evento"
@core
Scenario: Iniciar sesión como CoreTeam
    Given Pagina de inicio de sesión 
    When Iniciamos sesión con el usuario "coreteam@gmail.com" y password "123456"
    And preciono el boton de inio de sesión "Iniciar Sesión"
    And preciono el boton de de Proyectos "Proyectos" 
    Then Se muestran el boton de crear proyecto "Crear Proyecto"
@voluntario
Scenario: Iniciar sesión como Voluntario
    Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "voluntario@gmail.com" y contraseña: "123456"
    And presiono el botón de "Iniciar Sesión"
    Then Se muestra la pagina de inicio y se ve el boton de Cuenta "Cuenta"