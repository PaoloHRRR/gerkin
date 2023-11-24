Feature: Configuracion a tiempo real de sensibilidad de microfono
#Como usuario, deseo que la función de conversión de voz a texto tenga una configuración de sensibilidad para adaptarse al entorno en que me encuentre

Scenario Outline: Configuracion a tiempo real
Given el usuario aprieta el <boton de modo de baja sensibilidad>
When el usuario esté usando la función de conversion de voz a texto
Then el sistema ajustara la <sensibilidad del micrófono> para detectar mejor los ruidos cercanos e ignorar los lejanos

Examples: Boton de modo de baja sensibilidad
    |                        Boton                          |
    |   Mayra usa la funcion de conversion de voz a texto   |
    |      Mayra presiona el boton de baja sensibilidad     |

Examples: Ajuste en los parametros de sensibilidad del microfono
    |                     Ajuste                    |
    |       El sistema hace ajustes necesarios      |
    |   Se mejora la deteccion de ruidos cercanos   |