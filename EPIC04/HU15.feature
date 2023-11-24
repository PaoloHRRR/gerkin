Feature: Adaptacion a la imprecision
#Como usuario, deseo que el programa sea capaz de acostumbrarse a mi forma de efectuar las señas para poder hablar más cómodamente

Scenario Outline: Adaptacion automatica
Given el usuario efectúa <señas> delante de la cámara
When el usuario usa la función de traducción de señas a texto
And no son 100% precisos en repetidas ocasiones
Then el sistema guarda <información> respecto de la seña efectuada para interpretarla mejor a futuro

Examples: Señas
    |                 Señas                |
    |    Deletrea la palabra PAQUIDERMO    |
    |  Deletrea la palabra ISQUIOTIBIALES  |

Examples: Información de Señas
    |                   Información                       |
    |  No se ha reconocido al completo la seña efectuada  |
    |      Se ha guardado la informacion de la seña       |