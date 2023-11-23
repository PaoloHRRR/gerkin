Feature: Tutorial de nuevo usuario
#Como usuario sordo, quiero un tutorial que me permita aprender a usar la aplicación para hacer un uso efectivo del servicio.

Scenario Outline: Nuevo usuario
Given el usuario ingresa por primera vez con sus <datos de acceso>.
When el usuario ingresa la aplicación tras loguearse.
Then el sistema mostrará un <mensaje de inicio de tutorial>.

Examples: Datos de acceso
    | correo electronico   | contraseña    |
    | maria2004@gmail.com  | maria@mar2004 |
    | carlos2000@gmail.com | carl@s200o    |

Examples: Mensaje de inicio de tutorial
    | mensaje de inicio de tutorial                                                              |
    | Bienvenido al modo tutorial. A continuacion, se mostrara las funcionalidades de SignAvoice |

Scenario Outline: Revision manual del tutorial
Given el usuario aprieta el <botón de iniciar tutorial> nuevamente.
When el usuario está en el menú de ayuda.
Then el sistema mostrará un <mensaje de inicio de tutorial>.

Examples: Boton de iniciar tutorial 
    | boton de iniciar tutorial nuevamente                     |
    | Presiona el boton para acceder al tutorial de SignAvoice |

Examples: Mensaje de inicio de tutorial
    | mensaje de inicio de tutorial                                                              |
    | Bienvenido al modo tutorial. A continuacion, se mostrara las funcionalidades de SignAvoice |
