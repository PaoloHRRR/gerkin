Feature: Personalización de perfil
#Como usuario, quiero la opción de personalizar mi perfil incluyendo una foto y una breve descripción para que refleje quién soy

Scenario Outline: Personalización del perfil guardada exitosamente
Given el usuario ingresa <nuevos datos de usuario>
When el usuario navega el menú de configuración	
Then el sistema le muestra un <mensaje de datos guardados>

Examples: Nuevos datos de usuario
    |  Nuevos datos de usuario    |
    | Cargo: Gerente de RR.HH.    |
    |       Empresa: ALLICORP     |

Examples: Mensaje de datos guardados
    |      Mensaje de datos guarados    |
    |     Datos modificados con éxito   |
    | Cambios guardados exitosamente    |



Scenario Outline: Personalización del perfil fallida
Given el usuario ingresa <nuevos datos de usuario>
When el usuario navega el menú de configuración
And el sistema no puede guardar los cambios
Then el sistema muestra un <mensaje de error>

Examples: Nuevos datos de usuario
    |  Nuevos datos de usuario   |
    | Cargo: Gerente de RR.HH.   |
    |       Empresa: ALLICORP    |

Examples: Mensaje de error
    |                     Mensaje de error                       |
    |        Error: no se pudieron guardar los cambios           |
    |  No se pudieron guardar los cambios. Reinténtelo más tarde |