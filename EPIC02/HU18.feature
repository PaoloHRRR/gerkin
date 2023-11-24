Feature:
#Como usuario, quiero que la aplicación me permita convertir texto a voz para poder comunicarme en caso de no poder usar la cámara

Scenario Outline: 
Given el usuario ingresa <texto> usando el teclado
When el usuario está usando la función de texto a voz
Then el sistema muestra un recuadro de texto
And generará <voz> a partir del texto introducido

Examples: Texto
    |           Texto introducido por el usuario           |
    |               Hola, ¿puedes entenderme?              |
    | Algo así podrías escucharme cuando use este programa |

Examples: Voz
    |                     Voz generada                     |
    |               Hola, ¿puedes entenderme?              |
    | Algo así podrías escucharme cuando use este programa |
