Feature: Conacto con soporte en linea
#Como usuario sordo, quiero que la aplicación me ofrezca una opción de ayuda en línea para resolver cualquier problema o pregunta que pueda surgir.

Scenario Outline: Contacto con soporte en línea
Given el usuario envía un <mensaje a soporte>.
When el usuario selecciona la opción de “Contacto con soporte en línea” desde la sección de Ayuda
And necesita ayuda con un problema en la aplicación o fuera de la misma.
Then el sistema redirige al usuario a una ventana de <chat> con un miembro de soporte.

Examples: Mensaje a soporte
    | mensaje a soporte                                                                                  |
    | Buenos dias, he estado teniendo problemas con respecto a la verificacion de mi correo electronico. |
    | Buenos dias, me encuentro teniendo problemas con la autentificacion de mi cuenta.                  |

Examples: Chat
    | chat                                                                                                                |
    | Buenos dias, se le ha enviado un nuevo correo de verificacion. Si continua presentando problemas vuelva a escribir. |
    | Buenos dias, ¿Podria especificarme en que paso exacto le ha ocurrido el error de autentificacion?                   |