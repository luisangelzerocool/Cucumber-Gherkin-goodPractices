" hay 2 formas de crear escenarios de pruebas:"

"""
Imperativa: especificamos paso a paso lo que sucederá en la aplicación 
(hay veces escriben casos de pruebas orientados a UI "ponen cajas de texto, links y de más") así:
"""
Escenario: Inicio de sesión con credenciales válidas
  Dado navego a la página www.facebook.com 
  Y escribo en la caja de texto el nombre de usuario pepito
  Y escribo en la cada de texto contraseña 12345
  Cuando doy clic en el boton entrar
  Entonces debo ver el mensaje Todo Bien
  Y los botones de publicar y agregar historia



  """la idea es definir el QUE y no el COMO"""



"""
Declarativa: es aquella en la que especificamos el QUE sin entrar en el detalle de la aplicación
"""
Escenario: Inicio de sesión con credenciales válidas
Dado Juan es un usuario registrado
Cuando el envie sus credenciales validas
Entonces el debería poder ver su muro
Y las ultimas actualizaciones

"La mejor forma de hacer nuestros Feature files entendibles para un cliente es utilizando 
el mismo lenguaje que éste utiliza para describir la funcionalidad, por lo tanto siempre 
es mejor describir las acciones que haría el cliente."