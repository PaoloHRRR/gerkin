Feature: Interfaz accesible
#Como usuario sordo,  quiero una interfaz gráfica que sea fácil de usar y que permita ajustar rápidamente las configuraciones de voz y subtítulos para tener un manejo sencillo e intuitivo dentro de la aplicación.

Scenario Outline: Interfaz accesible
Given el usuario hace uso de la aplicación.
When el usuario navega los menús de la aplicación.
Then la interfaz mostrada debe ser clara, concisa, sencilla y fácil de entender y usar.

Examples: Login
    | login                                   |
    | Por favor, ingrese sus datos de acceso  |

Examples: Interfaz dinamica
    | interfaz dinamica       |
    | Bienvenido a SignAvoice |