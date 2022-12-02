Feature: Ver pagina los eventos
  En la pagina de los eventos se ven la lista de los eventos dispobles
  Como Voluntario
  I want Visualizar los eventos dispobles
  @first
  Scenario: Ver lista de de eventos
    Given Pagina de inicio de sesión 
    When Iniciamos sesión con el usuario "voluntario@gmail.com" y password "123456"
    And preciono el boton de inio de sesion "Iniciar Sesión"
    And preciono el boton de de Evntos "Eventos" 
    Then Se muestran los eventos dispobles "MuiPaper-root MuiCard-root jss23 MuiPaper-outlined MuiPaper-rounded"



  Scenario: Ver página de detalles de un evento específico
    Given En la página de inicio de sesión 
    When Iniciar sesión con email : "lider@gmail.com" y contraseña: "123456"
    And presione el botón de iniciar sesión
    And presiono el boton de de "Eventos" 
    And presiono el boton de "Detalles de Evento" sobre un evento especifico
    Then Se muestran la pagina del detalle del evento

  Scenario: Ver detalle de fecha de inicio de un evento específico
      Given En la página de inicio de sesión 
      When Iniciar sesión con email : "lider@gmail.com" y contraseña: "123456"
      And presione el botón de iniciar sesión
      And presiono el boton de de "Eventos" 
      And presiono el boton de "Detalles de Evento" sobre un evento especifico
      Then Se muestran la pagina del detalle del evento
      And Se visualiza la fecha de inicio del evento

  Scenario: Ver formulario de crear un evento
      Given En la página de inicio de sesión 
      When Iniciar sesión con email : "lider@gmail.com" y contraseña: "123456"
      And presione el botón de iniciar sesión
      And presiono el boton de de "Eventos" 
      And presiono el boton de "Crear evento"
      Then  se muestra el formulario para crear eventos

  Scenario: Eliminar evento
      Given En la página de inicio de sesión 
      When Iniciar sesión con email : "lider@gmail.com" y contraseña: "123456"
      And presione el botón de iniciar sesión
      And presiono el boton de de "Eventos" 
      And presiono el boton de "Eliminar evento"
      Then Se muestra una alerta  preguntando por la confirmación para eliminar el evento.




    