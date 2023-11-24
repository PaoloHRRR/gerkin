Feature: Conexion accesible y rapida
#Como usuario sordo, quiero poder iniciar sesión con mi correo electrónico de Google para ingresar más rápidamente.

Scenario Outline: Conexion de Google Accounts exitosa
Given el usuario usa la opción de iniciar sesión con <cuenta Google>.
When el usuario está en la pantalla de login.
Then se le muestra al usuario un <mensaje de confirmación>.

Examples: Cuenta Google
    | cuenta google.     |
    | mari2004@gmail.com |
    | carl2009@gmail.com |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion                        |
    | Google vinculado con exito. Bienvenida, Maria  |
    | Google vinculado con exito. Bienvenida, Carlos |

Scenario Outline: Conexion de Google Accounts fallida
Given el usuario usa la opción de iniciar sesión con <cuenta Google>.
When el usuario está en la pantalla de login, pero no ingresa a una cuenta.
Then el sistema muestra un <mensaje de error> advirtiendo que no se ha iniciado sesión con Google.

Examples: Cuenta Google
    | cuenta google.     |
    | mari2004@gmail.com |
    | carl2009@gmail.com |

Examples: Mensaje de error
    | mensaje de error                             |
    | Error en la vinculacion. Vuelve a intentarlo.|