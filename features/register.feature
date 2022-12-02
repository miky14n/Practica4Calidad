Feature: Crear usuarios
  Con la necesidad de crear usuarios en la pagina de Start Americas Together
  Como un usuario nuevo
  Yo quiero registrarme para acceder a los servicios de la aplicacion

  Background: I enter data to register page
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |

  Scenario: Validate I can register when all data inserted is valid
    When I click the "CREA TU CUENTA DE START" button
    Then I will see an alert message which says "Se ha enviado un correo de confirmación al email: adsdasada@gmail.com"

  Scenario Outline: Validate I can not create an account when Nombre field is not set
    When I left the field <Field> empty
    Then The button "CREA TU CUENTA DE START" should be disabled

    Examples: 
      | Field                  |
      | "Nombre"               |
      | "Apellido"             |
      | "Correo"               |
      | "Numero de celular"    |
      | "Contraseña"           |
      | "Confirmar contraseña" |

  Scenario: Validate we can not use the button to register when Nombre field is not valid (It has special characters)
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |
    And I add "!" in "Nombre" field
    And I click the "CREA TU CUENTA DE START" button
    Then I will see an alert that says "Nombre no valido"
