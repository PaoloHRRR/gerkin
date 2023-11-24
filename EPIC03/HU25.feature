Feature: Presets configurables
#Como usuario sordo, deseo que la aplicación me permita guardar “presets” de configuración para usar en distintas oportunidades

Scenario Outline: Presets almacenados con exito
Given  el usuario accede a la opción de <presets> de configuración.
When el usuario navega el menú de configuración.
Then el programa le muestra el menú para almacenar la configuración actual en un preset de configuración 
And lo guarda una vez terminado el proceso.
And le muestra un <mensaje de confirmacion>.

Examples: Parametros del preset
    |     parametros del preset     |
    |       volumen de la voz       |
    | velocidad de la transcripcion |

Examples: Mensaje de confirmacion
    |            mensaje de confirmacion           |
    | Sus presets han sido guardados correctamente |