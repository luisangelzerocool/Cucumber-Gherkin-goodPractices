"Mala Practica:"
Escenario: Como usuario existente y habilitado del cajero, quiero realizar una extracción para obtener dinero.
    Dado Me autentiqué con una tarjeta habilitada
    Y El saldo disponible en mi cuenta es positivo
    Y El cajero tiene suficiente dinero
    Y El cajero tiene papel suficiente para imprimir recibos
    Cuando Introduzco la tarjeta en el cajero
    Y Escribo en el teclado el pin de la tarjeta
    Y Presiono el botón de confirmar pin 
    Y Presiono el botón próximo a la opción extraer dinero 
    Y Ingreso una cantidad menor o igual a mi saldo disponible 
    Y Presiono el botón de confirmar extracción 
    Y Presiono el botón de confirmar imprimir recibo
    ...


"Medio Buena:"
Escenario: Como usuario existente y habilitado del cajero, quiero realizar una extracción para obtener dinero.
    Dado Me autentiqué con una tarjeta habilitada
    Y El saldo disponible en mi cuenta es positivo
    Cuando Selecciono la opción de extraer dinero
    Y Ingreso la cantidad de dinero menor al saldo disponible y disponible del cajero 
    Entonces Obtengo dinero 
    Y El dinero que obtuve se resta del saldo disponible de mi cuenta 
    Y El sistema devuelve la tarjeta automáticamente
    Y El sistema muestra el mensaje de transacción  finalizada



"Buena Práctica:"
Escenario: Como usuario existente y habilitado del cajero, quiero realizar una extracción para obtener dinero.
    Dado Me autentiqué con una tarjeta habilitada y tengo un saldo positivo
    Cuando Selecciono la opción de extraer dinero e ingreso la cantidad de dinero menor al saldo disponible
    Entonces Obtengo el dinero y este se resta del saldo disponible de mi cuenta devolviendo la tarjeta automáticamente
    Y El sistema muestra el mensaje de transacción  finalizada









Característica: Extracción de dinero 

    Antecedentes: extraer dinero
        Dado que La tarjeta de crédito está habilitada
        Y  El saldo disponible en mi cuenta es positivo 
        Y  El cajero tiene suficiente dinero

    Escenario: digitar valor de la transacción
        Cuando digito el valor de mi transacción
        Entonces me muestra una ventana de confirmación

    Escenario: confirmar retiro
        Cuando confirmo el retiro 
        Entonces me sale una ventana de retiro de dinero








Característica: Comprar Café
Como usuario de la máquina, requiero comprar café para comer el pan

    Esquema del escenario: usuario requiere comparar un café
        Dado que hay una <CantidadRestanteDeCafe> en la máquina
        Y he depositado un <MontoADepositar> 
        Cuando presiono el botón de café
        Entonces <CantidadDeCafeARecibir> debería ser servido

        Ejemplos:
        | CantidadRestanteDeCafe | MontoADepositar | CantidadDeCafeARecibir |
        |          1             |        1        |           1            |
        |         99             |       99        |          99            |







Característica: Creacion Contrato Proveedor en aplicativo
  Yo como usuario del aplicativo quiero crear una expediente contrato proveedor
  para poder operar con el dentro del aplicativo

  Esquema del escenario: Usuario desea crear un expediente contrato proveedor en el aplicativo
    Dado que el usuario se encuentra en el aplicativo 
    Cuando el digita los <datos> del contrato import a ingresar
    Entonces se debe generar un registro con los datos guardados

    Ejemplos:
    | datos |
    | src/test/resources/datadriven/expediente/ContratoProveedor.xlsx |








@RegressionTest
Característica: Extracción de dinero 

    Antecedentes: extraer dinero
        Dado que La tarjeta de crédito está habilitada
        Y  El saldo disponible en mi cuenta es positivo 
        Y  El cajero tiene suficiente dinero

    @SmokeTest
    Escenario: digitar valor de la transacción
        Cuando digito el valor de mi transacción
        Entonces me muestra una ventana de confirmación


    Escenario: confirmar retiro
        Cuando confirmo el retiro 
        Entonces me sale una ventana de retiro de dinero

        