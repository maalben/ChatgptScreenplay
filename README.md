# Screenplay con Ruby on Rails y Chatgpt

### Contexto

Con Ruby on Rails, lenguaje de programación que normalmente NO uso para automatizar y despues de horas y horas tratando de entender cómo en definitivas implementar Screenplay con uso del Actor, como es el deber ser, y apoyado con Chatgpt pudimos dejar super bien estructurado un ejemplo completo de automatización.

Estructura de proyecto:

    automation_project/
    ├── Gemfile
    ├── reports/
    ├── features/
    │   ├── features/
    │   │   ├── login.feature
    │   ├── interactions/
    │   │   ├── click_element.rb
    │   │   ├── fill_in_field.rb
    │   ├── questions/
    │   │   ├── login_successful_question.rb
    │   ├── step_definitions/
    │   │   ├── login_steps.rb
    │   ├── support/
    │   │   ├── abilities/
    │	│	└── browse_the_web.rb
    │   │   ├── env.rb
    │   │   ├── actor.rb
    │   │   └── hooks.rb
    │   ├── tasks
    │   │   ├── login_task.rb
    │   │   └── navigate_to.rb
    │   ├── user_interfaces
    │   │   ├── login_page.rb
    │   ├── util
    │   │   ├── utilities.rb
    ├── cucumber.yml
.

###### Gemfile
Es un archivo fundamental en proyectos Ruby que utiliza Bundler para gestionar dependencias. Define las gemas (librerías) que tu proyecto necesita y sus versiones.

Para este ejemplo se utilizan las siguientes gemas:

		capybara
		cucumber
		report_builder
		rspec
		selenium-webdriver
		site_prism

###### cucumber.yml
es utilizado por Cucumber para definir diferentes configuraciones de ejecución de pruebas. Permite especificar distintos perfiles de ejecución, cada uno con sus propias configuraciones y opciones. Este archivo es útil para organizar y ejecutar pruebas de diferentes maneras, como en distintos entornos, con diferentes niveles de detalle o con diferentes formatos de reporte.

###### browse_the_web.rb
Este archivo define una clase llamada BrowseTheWeb que es una habilidad (ability) en el patrón Screenplay. Esta habilidad encapsula las acciones que un actor puede realizar en el navegador.

###### actor.rb
La clase Actor interactúa con varias habilidades (abilities) que le permiten realizar estas acciones y responder preguntas.

###### env.rb
En un proyecto típico de Cucumber con Capybara, el archivo env.rb se encuentra en el directorio features/support y se utiliza para establecer la configuración global para las pruebas. Aquí es donde se configuran las herramientas y bibliotecas que Cucumber utilizará durante la ejecución de las pruebas.

###### hooks.rb
Se utiliza para definir "hooks" o ganchos que permiten ejecutar código antes o después de los escenarios de prueba, los pasos de prueba o incluso toda la ejecución de pruebas. Los hooks son útiles para configurar el entorno, limpiar después de pruebas, tomar capturas de pantalla en caso de fallos, y otras tareas similares.

###### reports/report.json
Este archivo es preferible dejarlo para que cada vez que se realice la ejecución se generen los reportes, uno por cucumber que se llama report.html y otro con la fecha en la que se lanza la automatización.

### Aplicaciones y versiones usadas

Se ha probado con las siguientes aplicaciones y en sus respectivas versiones:

ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-darwin22]
rbenv 1.3.0
Bundler version 2.5.18

### Cómo ejecutar la automatización

Para ejecutar la automatización, por consola o terminal, debe ubicarse en la raiz del proyecto, a continuación use alguno de los siguientes comandos según su necesidad:

Ejecución normal con el siguiente comando:
cucumber

Por si quiere ver una especie de verbose mientras se está ejecutando:
cucumber --backtrace

En la siguiente ruta se creará un archivo html con la fecha actual en la que se ejecute la automatización:
RAIZ_DE_PROYECTO/features/reports/

### Cambiar navegador para ejecutar la automatización

Actualmente, la automatización se ejecuta sobre chrome, en el caso de querer ejecutar, por ejemplo, en Firefox, tengan en cuenta:

Ir al archivo .env.

Cambiar la expresión:

**selenium_chrome**  por ***selenium_firefox***

y luego donde dice:

**chrome** por ***firefox***


Eso es todo !!
