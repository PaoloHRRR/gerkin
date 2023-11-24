Feature: Eliminar log de conversacion
#Como persona sorda,deseo poder eliminar el registro de una conversación dentro de la propia aplicación

Scenario Outline: Eliminacion de log exitoso
Given el usuario presiona el botón de <eliminar log de conversación>
When el usuario está en la pantalla de log de conversación
Then el sistema muestra un <mensaje de confirmación>

Examples: Presiona boton "Eliminar conversacion"
    |                      Boton                        |
    |       Marta selecciona una conversacion           |
    |  Marta aprieta el boton de eliminar conversacion  |

Examples: Mensaje de confirmacion
    |                  Mensaje                 |
    |    Conversacion eliminada con exito      |
    |     Se registra en la base de datos      |

Scenario Outline: Eliminacion de log fallido
Given el usuario presiona el botón de <eliminar log de conversación>
When el usuario está en la pantalla de log de conversación
And el sistema no puede eliminar el log
Then muestra un <mensaje de error>

Examples: Presiona boton "Eliminar conversacion"
    |                      Boton                        |
    |       Marta selecciona una conversacion           |
    |  Marta aprieta el boton de eliminar conversacion  |

Examples: Mensaje de error
    |                Mensaje                |
    |   Error al eliminar la conversacion   |
    |   No se registra en la base de datos  |

