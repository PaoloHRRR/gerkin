Feature: Conversión de señas a voz
#Como usuario, quiero que la aplicación incluya una función de síntesis de voz para comunicarme con personas que no conocen la lengua de señas

Scenario Outline: Conversión de señas a voz
Given el usuario realiza <señas> delante de la cámara
When el usuario está usando la función de señas a voz
Then el sistema interpreta y genera voz

Examples: Señas
    |            Señas               |
    | Deletreo de la palabra ALICORP |
    |   Seña para decir "reunión"    |

Examples: Voz
    |   Voz   |
    | ALICORP |
    | Reunión |
