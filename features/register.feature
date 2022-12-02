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

  Scenario Outline: No puedo crear una cuenta cuando un campo tiene datos invalidos
    When Agrego el caracter invalido <Character Added> en el campo <Field> de tal manera que se ve <Value>
    Then El boton "CREA TU CUENTA DE START" deberia estar deshabilitado

    Examples: 
      | Field               | Value                 | Character Added |
      | "Nombre"            | "Juan!"               | "!"             |
      | "Apellido"          | "Perez!"              | "!"             |
      | "Correo"            | "test>Mail@gmail.com" | ">"             |
      | "Correo"            | "testMail@gm!ail.com" | "!"             |
      | "Correo"            | "testMail@gmail.co!m" | "!"             |
      | "Numero de celular" | "(+591)7 5989769"     | "(Espacio)"     |
