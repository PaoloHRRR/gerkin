Feature: Configuración de velocidad de interpretación
#Como usuario, quiero poder personalizar la velocidad de interpretación de la aplicación para que se ajuste a mi ritmo de comunicación

Scenario Outline: Configuración de la velocidad de interpretación cambiada con éxito
Given el usuario modifica el <parámetro de velocidad de interpretación>
When el usuario está en el menú de configuraciones
Then mostrará un <mensaje de confirmación>

Examples: Parámetro de velocidad de interpretación
    | Parámetro de velocidad de interpretación |
    |               Alta                       |
    |            Media baja                    |

Examples: Mensaje de confirmación
    |       Mensaje de confirmación      |
    | Los cambios se guardaron con éxito |
    |     Cambio guardado exitosamente   |

Scenario Outline: 
Given el usuario modifica el <parámetro de velocidad de interpretación>
When el usuario entra al menú de configuraciones
And el sistema no guarda los cambios correctamente
Then el sistema mostrará un <mensaje de error>

Examples: Parámetro de velocidad de interpretación
    | Parámetro de velocidad de interpretación |
    |                   Alta                   |
    |               Media baja                 |

Examples: Mensaje de error
    |                Mensaje de error                       |
    |    Error: no se pudo cambiar la configuración         |
    |  No se pudo modificar la velocidad de interpretación  |