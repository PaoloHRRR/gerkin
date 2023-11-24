Feature: Retroalimentacion
#Como usuario sordo,  deseo contribuir con la recolección de información que mejore el servicio
#para recibir actualizaciones que solucionen inconvenientes o mejoren el producto

Scenario Outline: Retroalimentacion
Given el usuario ingresa <comentarios>
When el usuario está en la ventana ingresar comentarios
Then el sistema muestra un <mensaje de agradecimiento>

Examples: Comentarios
    |                              Comentarios                             |
    |       La aplicacion me ayuda mucho a comunicarme en el trabajo       |
    |  Gracias a la aplicacion puedo expresar mis emociones con los demas  |

Examples: Mensaje de agradecimiento
    |                      Mensaje                          |
    |        Muchas gracias por dejar tu comentario         |
    | Tus comentarios nos ayudaran a mejorar la aplicacion  |