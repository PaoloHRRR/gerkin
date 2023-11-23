Feature: Agregar tarjeta
#Como persona sorda quiero la opción de agregar mi tarjeta de débito/crédito a la aplicación para que se realice el cobro mensual desde la misma.  

Scenario Outline: Agregar tarjeta
Given el usuario selecciona la <opción de agregar tarjeta>. 
When el usuario navega el menú de configuración. 
Then el sistema le mostrará una <interfaz para añadir una tarjeta> vinculada a su cuenta.

Examples: Opcion de agregar tarjeta
    | opcion de agregar tarjeta                            |
    | Presione aqui para agregar una vinculada a su cuenta |

Examples: Interfaz para añadir una tarjeta
    | interfaz para añadir una tarjeta       |
    | Ingresa los datos de tu tarjeta aqui:  |

Scenario Outline: Agregar tarjeta exitoso
Given el usuario ingresa los <datos de tarjeta>.
When el usuario navega el menú de configuración
And el sistema valida los datos de la tarjeta.
Then el sistema mostrará un <mensaje de confirmación>
And la agrega a su cuenta

Examples: Datos de tarjeta
    | datos de tarjeta |
    | xxxxxxxxxx       |

Examples: Mensaje de confirmacion
    | mensaje de confirmacion                |
    | Su tarjeta ha sido vinculada con exito |

Scenario Outline: Agregar tarjeta fallido
Given el usuario ingresa los <datos de tarjeta>.
When el usuario navega el menú de configuración y  el sistema no puede validar los datos de la tarjeta.
Then el sistema mostrará un <mensaje de error>

Examples: Datos de tarjeta
    | datos de tarjeta |
    | xxxxxxxxxxx      |

Examples: Mensaje de error
    | mensaje de error                                          |
    | La tarjeta que ha introducido no se ha podido validar.    |
    | Los datos de la tarjeta que ha introducido no son validos |