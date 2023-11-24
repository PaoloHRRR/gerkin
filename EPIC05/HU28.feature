Feature: Almacenar log de conversacion
#Como persona sorda, deseo poder almacenar el registro de una conversación dentro de la propia aplicación para poder consultarlo directamente con la herramienta

Scenario Outline: Guardado de log exitoso
Given el usuario aprieta el <botón de guardar log de conversación>
When el usuario está en la pantalla de log de conversación
Then el sistema almacena el log, mostrando un <mensaje de log guardado>

Examples: Presiona boton "Guardar conversacion"
    |                           Boton                          |
    |           Marcos selecciona una conversacion             |
    |  Marcos aprieta el boton de guardar log de conversacion  |

Examples: Mensaje de log guardado
    |              Mensaje            |
    |     Log guardado con exito      |
    |  Se guarda en la base de datos  |

Scenario Outline: Guardado de log fallido
Given el usuario aprieta el botón de <guardar log de conversación>
When el usuario está en la pantalla de log de conversación
And el sistema no puede almacenar el log de la conversación
Then el sistema muestra un <mensaje de error>

Examples: Presiona boton "Guardar conversacion"
    |                          Boton                           |
    |           Marcos selecciona una conversacion             |
    |  Marcos aprieta el boton de guardar log de conversacion  |

Examples: Mensaje de error
    |                 Mensaje                   |
    |    El log no se pudo guardar con exito    |
    |  No se guardo el log en la base de datos  |