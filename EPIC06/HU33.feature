Feature: Cancelar suscripcion
#Como persona sorda quiero la opción de cancelar la suscripción de mi cuenta en cualquier momento

Scenario Outline: Cancelar suscripcion exitoso
Given el usuario hace click en el <botón de cancelar suscripción>.
When el usuario navega el menú de configuración
And el sistema es capaz de cambiar la configuración.
Then el sistema le mostrará un <mensaje de confirmación>.

Examples: Boton cancelar suscripcion
    | boton cancelar suscripcion                         |
    | Presiona para cancelar tu suscripcion a SignAvoice |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion                                                                       |
    | Se ha cancelado con exito su suscripcion a SignAvoice. Gracias por utilizar nuestro servicio. |

Scenario Outline: Cancelar suscripcion fallido
Given el usuario hace click en el <botón de cancelar suscripción>.
When el usuario navega el menú de configuración pero el sistema es capaz de cambiar la configuración.
Then el sistema mostrará un <mensaje de error>.

Examples: Boton cancelar suscripcion
    | boton cancelar suscripcion                         |
    | Presiona para cancelar tu suscripcion a SignAvoice |


Examples: Mensaje de error
    | mensaje de error                                                           |
    | No se ha podido cancelar su suscripcion a SignAvoice. Vuelve a intentarlo. |