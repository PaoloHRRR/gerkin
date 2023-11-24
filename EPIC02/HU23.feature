Feature: 
#Como usuario sordo, deseo que la aplicación pueda reconocer expresiones faciales para ajustar el tono de la voz generada por la función de conversión de señas a voz para transmitir más fielmente la intención de mi mensaje.

Scenario Outline: Reconocimiento facial
Given el usuario usa expresiones faciales que son reconocidas por el sistema
When el usuario usa la función de conversión de señas a voz
Then el sistema generará información sobre el estado de ánimo

Examples: Expresiones faciales
    |   expresiones faciales  |
    |    cara de felicidad    |
    |     cara de sorpresa    |

Examples: Informacion del estado de animo 
    |          informacion del estado de animo         |
    |   Hola, Juan. ¿Como estas? (expresa felicidad)   |
    | ¿Cómo es posible este suceso? (expresa sorpresa) |