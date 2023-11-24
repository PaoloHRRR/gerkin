Feature: Vinculacion entre usuarios
#Como persona sorda, deseo poder vincular mi dispositivo con el del usuario oyente para compartir mis preferencias de voz y subtítulos.

Scenario Outline: Vinculacion entre usuarios exitosa
Given el usuario presiona el botón de <vincular con otro dispositivo>.
When el usuario está en la pantalla de menú de la aplicación
Then el sistema valida la vinculación entre ambos dispositivos
And muestra un <mensaje de confirmación> de vinculación exitosa.

Examples: Vincular con otro dispositivo
    | vincular con otro dispositivo                                  |
    | Presione aqui para empezar la vinculacion con otro dispositivo |

Examples: Mensaje
    | mensaje                                  |
    | Dispositivo vinculado con exito, Maria.  |
    | Dispositivo vinculado con exito, Carlos. |

Scenario Outline: Vinculacion entre usuarios fallida
Given el usuario presiona el botón de <vincular con otro dispositivo>.
When el usuario está en la pantalla de menú de la aplicación
Then el sistema no puede validar la vinculación entre ambos dispositivos 
And muestra un <mensaje de error> en la vinculación.

Examples: Vincular con otro dispositivo
    | vincular con otro dispositivo                                  |
    | Presione aqui para empezar la vinculacion con otro dispositivo |

Examples: Mensaje
    | mensaje                                        |
    | Error en la vinculacion, vuelve a intentarlo.  |