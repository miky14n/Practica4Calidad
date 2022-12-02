Feature: Comprovar el inico de sesion con los diferentes roles
  En la pagina de iniciar sesion 
  Como usuario 
  Quiero iniciar sesion
@lider
Scenario: Iniciar sesion como Lider
    Given Pagina de inicio de sesión 
    When Iniciamos sesión con el usuario "voluntario@gmail.com" y password "123456"
    And preciono el boton de inio de sesion "Iniciar Sesión"
    And preciono el boton de de Evntos "Eventos" 
    Then Se muestran el boton de crear evento "Crear Evento"
@core
Scenario: Iniciar sesion como CoreTeam
    Given Pagina de inicio de sesión 
    When Iniciamos sesión con el usuario "coreteam@gmail.com" y password "123456"
    And preciono el boton de inio de sesion "Iniciar Sesión"
    And preciono el boton de de Proyectos "Proyectos" 
    Then Se muestran el boton de crear proyecto "Crear Proyecto"
@voluntario
Scenario: Iniciar sesion como Voluntario
    Given Pagina de inicio de sesión 
    When Iniciamos sesión con el usuario "voluntario@gmail.com" y password "123456"
    And preciono el boton de inio de sesion "Iniciar Sesión"
    Then Se muestra la pagina de inicio y se ve el boton de Cuenta "Cuenta"