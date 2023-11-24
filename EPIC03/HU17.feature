Feature: Configuración de privacidad
#Como usuario sordo, quiero la posibilidad de marcar ciertas conversaciones como privadas para proteger la confidencialidad de mis comunicaciones

Scenario Outline: Configuración de privacidad
Given el usuario usa el <botón de conversación privada>
When usa alguna de las funciones de traducción
Then el sistema <deja de recopilar información> enviada a la aplicación, garantizando la confidencialidad de los mensajes

Examples: Botón de Conversación privada
    |   Botón de Conversación privada   |
    |            Activar                |
    |            Pulsar                 |

Examples: 
    | Recopilación de información desactivada |
    |                False                    |
    |             Desactivada                 |