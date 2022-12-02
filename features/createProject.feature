Feature: Crear Proyectos con el usuario coreteam
  Con la necesidad de crear proyectos en la página de Americas Together
  Como un usuario registrado con permisos absolutos
  Yo quiero crear proyectos con ciertos parámetros

@cc
Scenario: Creando Proyecto solo con campos requeridos
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:       |  ProyectoGrupo3      | 
    |Descripción:  |  DescripcionGrupo3   |
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           |  ProyectoConFechaInicio3   | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  |  20102022                  | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de fin
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaFin3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Fecha de Fin:     | 20102022                  | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio y fin
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaInicioFin3 | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  | 20102022                   | 
    |Fecha de Fin:     | 20102022                   | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Objetivo
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConObjetivo3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Objetivo:         | ObjetivoGrupo3            | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio futura
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           |  ProyectoConFechaInicio3   | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  |  20102022                  | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de fin pasada
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaFin3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Fecha de Fin:     | 20102022                  | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con fecha de inicio rota
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConFechaInicioFin3 | 
    |Descripción:      |  DescripcionGrupo3         |
    |Fecha de Inicio:  | 20102022                   | 
    |Fecha de Fin:     | 20102022                   | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Objetivo
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:           | ProyectoConObjetivo3      | 
    |Descripción:      |  DescripcionGrupo3        |
    |Objetivo:         | ObjetivoGrupo3            | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Información Adicional
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:                |  ProyectoConObjetivo3      | 
    |Descripción:           |  DescripcionGrupo3         |
    |Información Adicional: |  InfoAdicional3            |
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto con Imagen por Link
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:            | ProyectoConObjetivo3  | 
    |Descripción:       | DescripcionGrupo3     |
    |Imagen por Link:   | imagen3               | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then El proyecto es creado correctamente

Scenario: Creando Proyecto sin campos requeridos
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:       |        | 
    |Descripción:  |        | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then sale un texto de error: campo requerido inválido

Scenario: Creando Proyecto sin nombre (campo requerido)
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Descripción:       |        | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then sale un texto de error: campo requerido inválido

Scenario: Creando Proyecto sin descripción (campo requerido)
	Given en la página de inicio de sesión
    When iniciamos sesión con el correo: "coreteam@gmail.com" y contraseña: "123456"
	And presiono el botón de "Iniciar Sesión"
    And presiono el botón de "PROYECTOS"
    And presiono el botón de "CREAR PROYECTO"
    When ingreso los campos requeridos en el formulario
    |Nombre:       |        | 
    And presiono el botón "CREAR PROYECTO" en el formulario
    Then sale un texto de error: campo requerido inválido