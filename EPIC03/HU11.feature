Feature: Configuración de la sensibilidad de detección
#Como usuario sordo, deseo una opción para configurar el nivel de sensibilidad de la aplicación para reconocer mis tipos de gestos y señas

Scenario Outline: Configuración de la sensibilidad exitosa
Given el usuario ingresa el <parámetro de sensibilidad de deteccion>
When el usuario está en el menú de configuracion
Then el sistema le muestra un <mensaje de confirmacion>

Examples: Parametro de sensibilidad de deteccion
    |                             Deteccion                              |
    |              Juliana esta en el menu de configuracion              |
    |   Juliana ingresa un parametro de sensibilidad alto de deteccion   |

Examples: Mensaje de confirmacion
    |               Mensaje               |
    |  Cambio de sensibilidad realizado   |
    |   Sensibilidad guardada con exito   |

Scenario Outline: Configuración de la sensibilidad exitosa
Given el usuario ingresa el <parámetro de sensibilidad de deteccion>
When el usuario está en el menú de configuracion
And el sistema no puede procesar los cambios
Then el sistema le muestra un mensaje de error advirtiéndole que los cambios de configuración no pudieron ser guardados

Examples: Parametro de sensibilidad de deteccion
    |                           Deteccion                              |
    |            Martela esta en el menu de configuracion              |
    |  Martela ingresa un parametro de sensibilidad bajo de deteccion  |

Examples: Mensaje de error
    |                  Mensaje                     |
    |     Cambio de sensibilidad no registrado     |
    |  Sensibilidad no guardada debido a un error  |