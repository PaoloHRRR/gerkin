Feature: Configuración de emojis
#Como usuario sordo, me gustaría tener la opción de configurar emojis para representar emociones en la transcripción, facilitando la comunicación

Scenario Outline: Configuración de emojis
Given el usuario selecciona la <opción de activar emojis>
When el usuario está en el menú de configuración de transcripción de voz a texto
Then el sistema <activa los emojis> en la aplicación

Examples: Opcion activar emojis
    |      Opcion activar emojis       |
    |           Activada               |
    |             True                 |

Examples: Emojis activados
    |        Emojis activados              |
    |            Hola :)                   |
    | Tristemente, perdimos información :( |



Scenario Outline: Configuración de emojis fallida
Given el usuario selecciona la <opción de activar emojis>
When el usuario está en el menú de configuración de transcripción de voz a texto
Then el sistema muestra un <mensaje de error>

Examples: Opción de activar emojis
    |       Opcion activar emojis        |
    |             Activada               |
    |               True                 |

Examples: Mensaje de error
    |                Mensaje de error                                |
    |    Error: no se pudo activar el uso de emojis                  |
    | No se puedo activar los emojis. Inténtelo nuevamente más tarde |