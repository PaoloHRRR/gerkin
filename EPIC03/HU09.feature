Feature: Personalización de mis señas
#Como persona sorda, quiero la opción de poder crear atajos para referir a determinadas palabras como el nombre de mi organización de una forma simplificada para no tener que deletrear el nombre completo cada vez

Scenario Outline: Personalización de mis señas exitosa
Given el usuario graba una <seña>
And le asigna un <significado>
When el usuario está en el menú de atajos
Then el sistema muestra un <mensaje de atajo añadido>

Examples: Seña
    |           Seña              |
    |  Seña con patrón giratorio  |
    | Seña de movimiento vertical |

Examples: Significado
    |     Significado    |
    | La junta directiva |
    |     EmprendiUP     |

Examples: Mensaje de atajo añadido
    |     Mensaje de atajo       |
    |   Atajo añadido con éxito  |
    | Atajo añadido exitosamente |

Scenario Outline: Personalización de mis señas fallida
Given el usuario graba una <seña>
And le asigna un <significado>
When el usuario está en el menú de atajos
And el sistema no es capaz de guardar la información del atajo
Then el sistema le muestra un <mensaje de error> para advertirle que el atajo no pudo guardarse

Examples: Seña
    |          Seña               |
    |  Seña con patrón giratorio  |
    | Seña de movimiento vertical |

Examples: Significado
    |    Significado     |
    | La junta directiva |
    |     EmprendiUP     |

Examples: Mensaje de error
    |                    Mensaje de error                          |
    |             Error: no se pudo registrar el atajo             |
    | No se pudo registrar el atajo. Inténtelo nuevamente más tarde|

Scenario Outline: Conflicto de seña de atajo
Given el usuario graba una <seña>
And le asigna un <significado>
When el usuario está en el menú de atajos
And el sistema detecta que la seña asociada al atajo interfiere con una palabra o con otro atajo
Then el sistema le muestra un mensaje de conflicto de atajos

Examples: Seña
    |              Seña              |
    |   Seña con patrón giratorio    |
    |   Seña con patrón giratorio    |

Examples: Significado
    |     Significado    |
    | La junta directiva |
    |     EmprendiUP     |

Examples: Mensaje de conflicto de atajo
    |                  Mensaje de conflicto de atajo                    |
    |        Conflicto de atajo: posee dos atajos con la misma seña     |
    | Posee dos atajos con la misma seña. No se pudo registrar el atajo |
