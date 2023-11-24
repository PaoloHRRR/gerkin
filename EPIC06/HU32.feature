Feature: Pago recurrente
#Como persona sorda quiero la opción de tener un pago recurrente de mi cuenta en la aplicación para no pagar manualmente cada mes mi suscripción. 

Scenario Outline: Activar pago recurrente
Given el usuario usa la opción <activar pago recurrente>.
When el usuario navega el menú de configuración.
Then el sistema le mostrará una <interfaz Añadir medio de pago>.

Examples: Activar pago recurrente
    | activar pago recurrente  |
    | Boton de pago recurrente |

Examples: Interfaz "Añadir medio de pago"
    | interfaz añadir medio de pago  |
    | ingrese los datos de la tarjeta |

Scenario Outline: Activar pago recurrente fallido
Given el usuario ingresa los <datos de tarjeta>.
When el usuario navega el menú de configuración
And el sistema no puede validar los datos de la tarjeta
Then el sistema mostrará un <mensaje de error>.

Examples: Datos de tarjeta
    | datos de tarjeta |
    | xxxxxxxxxx       |

Examples: Mensaje de error
    | mensaje de error                        |
    | Los datos de la tarjeta no son validos. |

Scenario Outline: Activar pago recurrente exitoso
Given el usuario ingresa los <datos de tarjeta>.
When el usuario navega el menú de configuración
And el sistema valida los datos de la tarjeta.
Then el sistema mostrará un <mensaje de confirmación>.

Examples: Datos de tarjeta
    | datos de tarjeta |
    | xxxxxxxxx        |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion                          |
    | La tarjeta se ha vinculado con exito a su cuenta |