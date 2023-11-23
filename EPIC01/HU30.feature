Feature: Cambiar dirección de correo electrónico
#Como usuario sordo, quiero la opción de poder cambiar la dirección de correo electrónico asociada a mi cuenta para poder administrar apropiadamente en caso sea necesario.

Scenario Outline: Cambiar dirección de correo electrónico
Given el usuario selecciona la opción de cambiar dirección de correo electrónico e ingresa una <nueva direccion de correo electronico>.
When el usuario navega el menú de configuración de perfil.
Then el sistema le muestra un <mensaje de confirmacion> sobre su decisión.

Examples: Nueva direccion de correo electronico
    | direccion de correo electronico |
    | maria2004@gmail.com             |
    | carlos2000@gmail.com            |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion                                                                         |
    | Tu cambio de correo electronico se ha realizado con exito, Maria. Revisa tu correo electronico. |
    | Tu cambio de correo electronico se ha realizado con exito, Carlos. Revisa tu correo electronico. |

Scenario Outline: Confirmacion recibida
Given el usuario <verifica el correo> enviado de cambio de correo electrónico desde el correo enviado a la dirección especificada anteriormente.
When el usuario usa su correo electrónico.
Then el sistema muestra un <mensaje de confirmación> de cambio electrónico
And pide reiniciar la sesión.

Examples: verifica correo
    | verifica correo    |
    | Bandeja de entrada |

Examples: mensaje de confirmacion
    | mensaje de confirmacion |
    | Su correo electronico vinculado ha sido cambiado. Inicie sesion en la aplicacion nuevamente. |