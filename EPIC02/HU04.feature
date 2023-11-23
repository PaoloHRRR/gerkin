Feature: Transcripcion de voz a texto
#Como usuario, quiero que la aplicacion sea capaz de traducir los mensajes orales de las personas, para poder leerlos y asi entablar comunicacion

Scenario Outline: Idioma reconocido
Given el usuario usando su telefono capta una <frase> de otras personas para que sea traducida a texto
When el usuario esta haciendo uso de la funcion de interpretacion 
And comienza a hablar
And el sistema reconoce el idioma
Then el sistema comienza a generar la <transcripcion> segun las preferencias de ajustes del usuario

Examples: Frase
    |                                   Frase                                   |
    | En efecto Rodrigo, el informe te lo estare entregando a las 3 de la tarde |
    |             Si, he recibido la confirmacion del supervisor                |

Examples: transcripcion
    |                               Transcripcion                               |
    | En efecto Rodrigo, el informe te lo estare entregando a las 3 de la tarde |
    |             Si, he recibido la confirmacion del supervisor                |



Scenario Outline: Idioma no reconocido
Given el usuario usando su telefono capta una <frase> de otras personas para que sea traducida a texto
When el usuario esta haciendo uso de la funcion de interpretacion
And comienza a hablar
And el sistema no reconoce el idioma
Then el sistema muestra una <advertencia> de no poder reconocer el idioma
And lista los <idiomas> que es capaz de reconocer

Examples: Frase
    |                                   Frase                                   |
    | En efecto Rodrigo, el informe te lo estare entregando a las 3 de la tarde |
    |             Si, he recibido la confirmacion del supervisor                |

Examples: Advertencia
    |                            Mensaje de advertencia                           |
    |         Advertencia: el sistema no es capaz de reconocer el idioma          |
    | Idioma no reconocido: ¿se esta utilizando alguno de los siguientes idiomas? |

    Examples: Idiomas
    | Idiomas reconocidos |
    |       Español       |
    |       Ingles        |



Scenario Outline: Interferencias de audio
Given el usuario usando su telefono capta una <frase> de otras personas para que sea traducida a texto
When el usuario esta haciendo uso de la funcion de interpretacion
And comienza a hablar
And el sistema no reconoce el idioma
And pierde fragmentos del audio por problemas de la entrada de audio o presencia de otros ruidos en el ambiente
Then el sistema muestra un <mensaje de advertencia> alertando al usuario que se tienen dificultades para generar los subtitulos 
And se muestra una lista de <recomendaciones> para mejorar la calidad de la entrada y generar un subtitulado mas rapido y preciso

Examples: Frase
    |                                   Frase                                   |
    | En efecto Rodrigo, el informe te lo estare entregando a las 3 de la tarde |
    |             Si, he recibido la confirmacion del supervisor                |

Examples: Mensaje de advertencia
    |                                 Mensaje de advertencia                               |
    |                   Advertencia: se detectan intromisiones de audio                    |
    | Advertencia: se detectan altos niveles de ruido que interfieren con la transcripcion |