Feature: Eliminar tarjeta
#Como persona sorda quiero la opción de eliminar mi tarjeta débito/crédito de la aplicación para evitar que se realicen los cobros mensuales a la misma. 

Scenario Outline: Eliminar tarjeta exitoso
Given el usuario selecciona la <opción de eliminar tarjeta>.
When el usuario navega el menú de configuración. 
Then el sistema le mostrará un <mensaje de confirmación>.

Examples: Opcion de eliminar tarjeta
    | opcion de eliminar tarjeta                                  |
    | Presiona aqui para eliminar la vinculacion con esta tarjeta |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion |
    | Se ha desvinculado la tarjeta con la cuenta exitosamente |

Scenario Outline: Eliminar tarjeta fallido
Given el usuario selecciona la <opción de eliminar tarjeta>.
When el usuario navega el menú de configuración
And el sistema no es capaz de cambiar la configuración.
Then el sistema le mostrará un <mensaje de error>.

Examples: Opcion de eliminar tarjeta
    | opcion de eliminar tarjeta                                  |
    | Presiona aqui para eliminar la vinculacion con esta tarjeta |

Examples: Mensaje de error
    | mensaje de error                                         |
    | La tarjeta no se ha podido desvincular de la cuenta.     |
