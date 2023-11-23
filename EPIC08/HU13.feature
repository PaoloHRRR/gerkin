Feature: Informacion educativa adicional
#Como usuario, quiero poder acceder a un diccionario de señas en línea dentro de la aplicación para buscar y aprender nuevas señas.

Scenario Outline: Información educativa
Given el usuario ingresa a la <opción “Más sobre la lengua de señas”>.
When el usuario está en el menú de ayuda.
Then el sistema abre una interfaz nueva en que se accede a un <diccionario de señas> recreadas con un modelo 3D.

Examples: Opción “Más sobre la lengua de señas”
    | más sobre la lengua de señas        |
    | Conoce mas sobre la lengua de señas |

Examples: Diccionario de lengua de señas
    | diccionario de lengua de señas                   |
    | Aprende mas de la lengua de señas con SignAvoice |