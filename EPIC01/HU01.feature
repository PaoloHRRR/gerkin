Feature: Cuenta de usuario
#Como un nuevo usuario que busca empleo, quiero poder crear una cuenta en la aplicación para acceder a sus funciones de comunicación, para poder comunicarse eficazmente en el entorno laboral

Scenario Outline: Usuario nuevo, registro exitoso
Given el usuario intenta registrarse llenando de forma correcta sus <datos de cuenta> para el registro.
When el usuario da click al botón de registrarse.
Then el sistema crea su cuenta 
And envía un <correo de confirmación> al correo electrónico asociado desde la cual poder logear por primera vez.

Examples: Datos de cuenta
    | correo electronico   | contraseña    | nombre usuario |
    | maria2004@gmail.com  | maria@mar2004 | mariaRamos     |
    | carlos2000@gmail.com | carl@s200o    | CarlosPope     |

Examples: Correo de confirmacion
    | correo de confirmacion                                                   |
    | Tu registro se ha confirmado con exito. Bienvenida a SignAvoice, Maria.  |
    | Tu registro se ha confirmado con exito. Bienvenido a SignAvoice, Carlos. |

Scenario Outline: Usuario nuevo, registro fallido
Given el usuario intenta registrarse llenando de forma errónea o parcial los <datos de cuenta> por registro.
When el usuario da click al botón de registrarse.
Then el sistema rechaza su solicitud de registro
And le salta un <mensaje de error>, señalando los campos vacíos o con errores, especificando el error.

Examples: Datos de cuenta 
    | correo electronico   | contraseña    | nombre usuario |
    | maria2004@gmail.com  | maria@mar2004 | mariaRamos     |
    | carlos2000@gmail.com | carl@s200o    | CarlosPope     |

Examples: Mensaje de error
    | mensaje de error                                                             |
    | Error en la autentificacion de los datos ingresado. Ingreselos correctamente |