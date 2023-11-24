Feature: Gestionar logs de conversacion
#Como usuario sordo, deseo que exista una opción para gestionar los logs de conversación para poder leerlos o eliminarlos

Scenario Outline: Menu de log de conversacion
Given el usuario selecciona la opción de <gestión de logs de conversación>
When el usuario navega por el menú de opciones
Then el sistema le muestra la <interfaz de gestión de logs>

Examples: Botón “Gestión de logs de conversación”
    |                       Boton                             |
    |          Saul navega por el menu de opciones            |
    |  Saul presiona el boton geston de logs de conversacion  |

Examples: Interfaz de gestión de logs
    |                  Interfaz                  |
    |  Esta es interfaz de logs de conversacion  |
    |  Aqui puedes gestionar tus conversaciones  |