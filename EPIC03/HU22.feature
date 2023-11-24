Feature: Personalizacion de fondo
#Como usuario, quiero que la aplicación ofrezca una opción de "modo oscuro" para una mejor visibilidad en condiciones de poca luz.

Scenario Outline: Personalizacion de fondo
Given el usuario activa la función de <modo oscuro> en la aplicación
When el usuario accede a la sección de “Apariencia” en la aplicación.
Then el sistema activa el <modo oscuro>

Examples: Boton Modo Oscuro
    | boton modo oscuro                                           |
    | Presiona el boton para activar el modo oscuro de SignAvoice |

Examples: Modo oscuro en aplicacion activado 
    | modo oscuro en aplicacion activado             |
    | Se ha activado el modo oscuro en la aplicacion |