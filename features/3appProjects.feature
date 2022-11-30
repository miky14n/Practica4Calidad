Feature: Crear Proyectos con CoreTeam
  Con la necesidad de crear proyectos en la página de Americas Together
  Como un usuario registrado
  I Yo quiero crear proyectos con ciertos parámetros

@cc
Scenario: Creando Proyecto solo con campos requeridos
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:       |  ProyectoGrupo3      | 
    |Descripción:  |  DescripcionGrupo3   |
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           |  ProyectoConFechaInicio3   | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  |  20102022                  | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de fin
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaFin3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Fecha de Fin:     | 20102022                  | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio y fin
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaInicioFin3 | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  | 20102022                   | 
    |Fecha de Fin:     | 20102022                   | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Objetivo
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConObjetivo3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Objetivo:         | ObjetivoGrupo3            | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente
Scenario: Creando Proyecto con fecha de inicio futura
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           |  ProyectoConFechaInicio3   | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  |  20102022                  | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de fin pasada
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaFin3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Fecha de Fin:     | 20102022                  | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio rota
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaInicioFin3 | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  | 20102022                   | 
    |Fecha de Fin:     | 20102022                   | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Objetivo
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConObjetivo3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Objetivo:         | ObjetivoGrupo3            | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Información Adicional
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:                |  ProyectoConObjetivo3      | 
    |Descripción:           |  DescripcionGrupo3         |
    |Información Adicional: |  InfoAdicional3            |
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Imagen por Link
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:            | ProyectoConObjetivo3  | 
    |Descripción:       | DescripcionGrupo3     |
    |Imagen por Link:   | imagen3               | 
    And Presiono el botón CREAR PROYECTO
    #Then El proyecto es creado correctamente

Scenario: Creando Proyecto sin campos requeridos
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:       |        | 
    |Descripción:  |        | 
    And Presiono el botón CREAR PROYECTO
    Then Sale texto de error por campo requerido inválido

Scenario: Creando Proyecto sin nombre (campo requerido)
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Descripción:       |        | 
    And Presiono el botón CREAR PROYECTO
    Then Sale texto de error por campo requerido inválido

Scenario: Creando Proyecto sin descripción (campo requerido)
	Given Estoy en la página de Americas Together
    #And Estoy logeado con la cuenta "coreteam"
	And Le doy click al botón PROYECTOS
    And Le doy click al botón CREAR PROYECTO
    When ingreso los campos requeridos en el formulario
    |Nombre:       |        | 
    And Presiono el botón CREAR PROYECTO
    Then Sale texto de error por campo requerido inválido