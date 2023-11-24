Feature: Log de conversacion
#Como persona sorda, deseo que la función de transcripción de voz a texto cuente con un log 
#de tal forma que pueda releer y copiar el texto generado en una conversación 
#para entenderlo mejor o guardarlo

Scenario Outline: Acceso al log
Given el usuario aprieta el <boton de log de conversación>
When el usuario hace uso de la función de transcripción de voz a texto
Then el sistema mostrará una interfaz que el <log de conversación>

Examples: Presiona boton "Log de conversacion"
    |                          Boton                                 |
    | Javier esta usando la funcion de transcripción de voz a texto  |
    |        Javier aprieta el boton de log de conversacion          |

Examples: Log de conversacion
    |                     Log                     |
    |          Carga la interfaz del log          |
    |  Se muestra el texto de las conversaciones  |