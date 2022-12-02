Feature: Crear usuarios
  Con la necesidad de crear usuarios en la pagina de Start Americas Together
  Como un usuario nuevo
  Yo quiero registrarme para acceder a los servicios de la aplicacion

  Background: Ingreso datos al formulario de Crea Tu Cuenta
    Given Estoy en la vista de crear cuenta
    When Ingreso los siguientes datos al formulario
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |

  Scenario: Puedo crear una cuenta cuando ingreso datos validos
    When Clickeo el boton de "CREA TU CUENTA DE START"
    Then Vere un mensaje de alerta que dice "Se ha enviado un correo de confirmación al email: testMail@gmail.com"

  Scenario Outline: No puedo crear una cuenta cuando dejo un campo del formulario vacio
    When Dejo el campo <Field> vacio
    Then El boton "CREA TU CUENTA DE START" deberia estar deshabilitado

    Examples: 
      | Field                  |
      | "Nombre"               |
      | "Apellido"             |
      | "Correo"               |
      | "Numero de celular"    |
      | "Contraseña"           |
      | "Confirmar contraseña" |

  Scenario: Validate we can not use the button to register when Nombre field is not valid (It has special characters)
    When I add "!" in "Nombre" field
    And I click the "CREA TU CUENTA DE START" button
    Then I will see an alert that says "Nombre no valido"
