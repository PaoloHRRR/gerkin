Feature: Notificacion de error al interpretar
#Como usuario, deseo recibir notificaciones cuando no se captan mis señas para corregirlas en el momento

Scenario Outline: Notificacion de error
Given el usuario usa lenguaje de <señas>
When el usuario emplea la funcionalidad de traducción de señas a voz
And el sistema es incapaz de reconocer la lengua de señas total o parcialmente
Then el sistema muestra un <mensaje de error> con recomendaciones para que el sistema capte mejor las señas

Examples: Señas 
    |               Señas                |
    |   Deletrea la palabra PALINDROMO   |
    |   Deletrea la palabra MASTODONTE   |

Examples: Mensaje de error
    |   Lenguaje de señas no reconocida  |
    |  No se puede procesar esta seña    |
    |    Vuelva a realizar las señas     |