Feature: Conexion accesible y rapida
#Como usuario sordo, quiero poder iniciar sesión con mi correo electrónico de Google para ingresar más rápidamente

Scenario Outline: Conexión con Google Accounts exitosa
Given el usuario usa la opción de iniciar sesión con <cuenta Google>
When el usuario está en la pantalla de login
Then se le muestra al usuario un <mensaje de confirmacion>

Examples: Cuenta Google
    |                 Cuenta                    |
    |   Luciana ingresa sus datos en el login   |
    |           Luciana inicia sesion           |

Examples: Mensaje de confirmación
    |               Mensaje                |
    |   Los datos se procesan el sistema   |
    |     Sesion iniciada correctamente    |

Scenario Outline: Conexión con Google Accounts fallida
Given el usuario usa la opción de iniciar sesión con <cuenta Google>
When  el usuario está en la pantalla de login, pero no ingresa a una cuenta
Then el sistema muestra un <mensaje de error> advirtiendo que no se ha iniciado sesión con Google

Examples: Cuenta Google
    |                 Cuenta                    |
    |   Hillary ingresa sus datos en el login   |
    |         Hillary no inicia sesion          |

Examples: Mensaje de error
    |           Mensaje             |
    |   No se procesa ningun dato   |
    |    No se ha iniciado sesion   |
