Feature: Formato de texto para conversaciones con múltiples personas
#Como usuario sordo, deseo que la función de conversión de voz a texto tenga configuraciones para representar la presencia de varias personas en el texto

Scenario Outline: Adaptación de diferentes voces
Given el usuario cambia los <parámetros en subtítulos para múltiples interlocutores>
When el usuario navega el menú de configuraciones
Then el sistema le muestra un <mensaje de confirmación>

Examples: Parámetros de subtítulos para múltiples interlocutores
    | Parámetros de subtítulos para múltiples interlocutores |
    | Diferenciar interlocutores mediante diferentes colores |
    |     Diferenciar interlocutores usando asteriscos       |

Examples: Mensaje de confirmación
    |        Mensaje de confirmación        |
    |     Cambios aplicados con éxito       |
    |    Cambios aplicados exitosamente     |