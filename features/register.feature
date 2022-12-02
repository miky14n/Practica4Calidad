Feature: Crear usuario en la aplicación
  Con la necesidad de crear usuarios en la pagina de Start Americas Together
  Como un usuario nuevo
  Yo quiero registrarme para acceder a los servicios de la aplicación

  Background: Ingreso datos al formulario de Crea Tu Cuenta
    Given estoy en la vista de crear cuenta
    When ingreso los siguientes datos al formulario
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |

  Scenario: Puedo crear una cuenta cuando ingreso datos válidos
    When hago click al botón de "CREA TU CUENTA DE START"
    Then veré un mensaje de alerta que dice "Se ha enviado un correo de confirmación al email: testMail@gmail.com"

  Scenario Outline: No puedo crear una cuenta cuando dejo un campo del formulario vacío
    When dejo el campo <Field> vacío
    Then El botón "CREA TU CUENTA DE START" debería estar deshabilitado

    Examples: 
      | Field                  |
      | "Nombre"               |
      | "Apellido"             |
      | "Correo"               |
      | "Numero de celular"    |
      | "Contraseña"           |
      | "Confirmar contraseña" |

  Scenario Outline: No puedo crear una cuenta cuando un campo tiene un carácter inválido
    When agrego el carácter inválido <Character Added> en el campo <Field> de tal manera que se ve <Value>
    Then el botón "CREA TU CUENTA DE START" debería estar deshabilitado
    And podré ver un mensaje de error justo debajo del campo que diga <Field> no válido

    Examples: 
      | Field      | Value                 | Character Added |
      | "Nombre"   | "Juan!"               | "!"             |
      | "Apellido" | "Perez!"              | "!"             |
      | "Correo"   | "test>Mail@gmail.com" | ">"             |
      | "Correo"   | "testMail@gm!ail.com" | "!"             |
      | "Correo"   | "testMail@gmail.co!m" | "!"             |
