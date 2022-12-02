Feature: Ver página de eventos en la aplicación Americas Together
  En la página de los eventos se ven la lista de los eventos disponibles
  Como un usuario registrado con distintos roles
  Quiero visualizar los eventos disponibles
  
  @first
  Scenario: Ver lista de de eventos
    Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "voluntario@gmail.com" y contraseña: "123456"
    And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "Eventos"
    Then se muestran los eventos disponibles

  Scenario: Ver página de detalles de un evento específico
    Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "lider@gmail.com" y contraseña: "123456"
    And presiono el botón de iniciar sesión
    And presiono el botón de "Eventos"
    And presiono el botón de "Detalles de Evento" sobre un evento específico
    Then se muestra la página del detalle del evento

  Scenario: Ver detalle de fecha de inicio de un evento específico
      Given en la página de inicio de sesión
      When iniciamos sesión con el correo: "lider@gmail.com" y contraseña: "123456"
      And presiono el botón de iniciar sesión
      And presiono el botón de "Eventos"
      And presiono el botón de "Detalles de Evento" sobre un evento específico
      Then se muestra la página del detalle del evento
      And se visualiza la fecha de inicio del evento

  Scenario: Ver formulario de crear un evento
      Given en la página de inicio de sesión
      When iniciamos sesión con el correo: "lider@gmail.com" y contraseña: "123456"
      And presiono el botón de iniciar sesión
      And presiono el botón de "Eventos"
      And presiono el botón de "Crear evento"
      Then se muestra el formulario para crear eventos

  Scenario: Eliminar evento
      Given en la página de inicio de sesión
      When iniciamos sesión con el correo: "lider@gmail.com" y contraseña: "123456"
      And presiono el botón de iniciar sesión
      And presiono el botón de "Eventos" 
      And presiono el botón de "Eliminar evento"
      Then se muestra una alerta preguntando por la confirmación para eliminar el evento




    