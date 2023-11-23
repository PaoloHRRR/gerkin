Feature: Pantalla de login
#Como usuario, al tener una cuenta registrada en la aplicación quiero poder ingresar mis datos identificadores para poder acceder a las funciones

Scenario Outline: Login exitoso
Given el usuario ingresa sus <datos de acceso> correctamente.
When el usuario da click en el botón de ingresar.
Then el sistema valida sus datos 
And carga el <menú de funciones de la aplicación>.

Examples: Datos de acceso
    | correo electronico   | contraseña    |
    | maria2004@gmail.com  | maria@mar2004 |
    | carlos2000@gmail.com | carl@s200o    |

Examples: Menu de funciones de la aplicacion
    | menu funciones de la aplicacion |
    | pagina principal de SignAvoice  |

Scenario Outline: Recordar mi usuario
Given el usuario marca la casilla <Recordar mi usuario>.
When el usuario inicia sesión.
Then el sistema informa mediante un <mensaje de confirmación> la decisión del usuario.

Examples: Recordar mi usuario
    | recordar mi usuario |
    | ¿Recordar usuario?  |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion  |
    | Se recordara su usuario  |

Scenario Outline: Login fallido
Given el usuario ingresa sus <datos de acceso> de forma errónea, sean los datos incorrectos, estén los campos vacíos u otro dispositivo tenga iniciada su sesión.
When el usuario da click en el botón de ingresar.
Then el sistema le niega el acceso 
And muestra un <mensaje de error> con la razón.

Examples: Datos de acceso
    | correo electronico   | contraseña    |
    | maria2004@gmail.com  | maria@max2004 |
    | carlos2000@gmail.com | carl@s2o0o    |

Examples: Mensaje de error
    | mensaje de error |
    | Su contraseña o correo electronico no se han podido validar. |