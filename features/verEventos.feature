Feature: Ver pagina los eventos
  En la pagina de los eventos se ven la lista de los eventos dispobles
  Como Voluntario
  I want Visualizar los eventos dispobles
  @first
  Scenario: Ver lista de de eventos
    Given Pagina de inicio de sesision 
    When Iniciamos sesision con el usuario: "voluntario@gmail.com" y password: "123456"
    And preciono el boton de iniciar sesision
    And preciono el boton de de "Eventos" 
    Then Se muestran los eventos dispobles
