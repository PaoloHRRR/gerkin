Feature: Cambiar contraseña
#Como persona, quiero la posibilidad de cambiar la contraseña cuando yo desee para sentirme más seguro.

Scenario Outline: Cambiar contraseña
Given el usuario selecciona la opción de <cambiar contraseña>.
When el usuario navega el menú de configuración de perfil.
Then el sistema le muestra una <interfaz de ingreso de nueva contraseña>. 

Examples: Cambiar contraseña
    | cambiar contraseña          |
    | boton de cambiar contraseña |

Examples: interfaz de ingreso de nueva contraseña
    | interfaz de ingreso de nueva contraseña  |
    | Ingrese su nueva contraseña:             |

Scenario Outline: Contraseña nueva ingresada
Given el usuario ingresa su <nueva contraseña>.
When el usuario navega los ajustes de cuenta.
And su contraseña cumple los estándares de seguridad.
Then el sistema muestra un <mensaje de confirmación> de cambio de contraseña
And Pide reiniciar la sesión.

Examples: Nueva contraseña
    | nueva contrasñeña |
    | maria@mar2004     |
    | carl@s200o        |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion                                                  |
    | Maria, tu contraseña se ha cambiado con exito. Vuelve a iniciar sesion.  |
    | Carlos, tu contraseña se ha cambiado con exito. Vuelve a iniciar sesion. |

Scenario Outline: Contraseña nueva ingresada no es segura
Given el usuario ingresa su <nueva contraseña>.
When el usuario navega los ajustes de cuenta.
And su contraseña no cumple los estándares de seguridad.
Then el sistema muestra un <mensaje de advertencia>
And pide ingresar una contraseña distinta.

Examples: Nueva contraseña
    | nueva contraseña |
    | mar20            |
    | car10            |

Examples: Mensaje de advertencia
    | mensaje de advertencia                                |
    | Maria, esa contraseña no es segura. Prueba con otra.  |
    | Carlos, esa contraseña no es segura. Prueba con otra. |