Feature: Crear usuarios
  Con la necesidad de crear usuarios en la pagina de Start Americas Together
  Como un usuario nuevo
  Yo quiero registrarme para acceder a los servicios de la aplicacion

  Scenario: Validate we can register when all data inserted is valid
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |
    And I click the "CREA TU CUENTA DE START" button
    Then I will see an alert message which says "Se ha enviado un correo de confirmación al email: adsdasada@gmail.com"

  Scenario: Validate we can not use the button to register when Name field is empty
    Given I am in register page
    When I enter the following data
      | Nombre:               |                    |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |
    And I click the "CREA TU CUENTA DE START" button
    Then I will not see an alert message

  Scenario: Validate we can not use the button to register when Apellido field is empty
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             |                    |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |
    And I click the "CREA TU CUENTA DE START" button
    Then I will not see an alert message

  Scenario: Validate we can not use the button to register when Correo field is empty
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan           |
      | Apellido:             | Perez          |
      | Correo:               |                |
      | Numero de celular:    | (+591)7894561  |
      | Contraseña:           | securedPass123 |
      | Confirmar contraseña: | securedPass123 |
    And I click the "CREA TU CUENTA DE START" button
    Then I will not see an alert message

  Scenario: Validate we can not use the button to register when Numero_celular field is empty
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    |                    |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: | securedPass123     |
    And I click the "CREA TU CUENTA DE START" button
    Then I will not see an alert message

  Scenario: Validate we can not use the button to register when Contraseña field is empty
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           |                    |
      | Confirmar contraseña: | securedPass123     |
    And I click the "CREA TU CUENTA DE START" button
    Then I will not see an alert message

  Scenario: Validate we can not use the button to register when Confirmar_contraseña field is empty
    Given I am in register page
    When I enter the following data
      | Nombre:               | Juan               |
      | Apellido:             | Perez              |
      | Correo:               | testMail@gmail.com |
      | Numero de celular:    | (+591)7894561      |
      | Contraseña:           | securedPass123     |
      | Confirmar contraseña: |                    |
    And I click the "CREA TU CUENTA DE START" button
    Then I will not see an alert message

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
