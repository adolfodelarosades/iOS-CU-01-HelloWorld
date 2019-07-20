# iOS-CU-01-HelloWorld

## Primera APP

Clasica APP HelloWorld

## Conectar elementos de la vista al código
Presionando Ctrl en el elemento y arrastrar hasta la ventana del Controller

* Uso de Outlet  (Genera una var)
* Uso de Action (Genera una func)

## Creación de Alerta

```
@IBAction func boton(_ sender: UIButton) {
   //Crea una alerta con un titulo, mensaje y estilo
   //Existen dos estilos: .alert y .actionSheet
   let alerta = UIAlertController(title: "Bienvenido", message: nombre.text, preferredStyle: .alert)

   //La alerta debe incluir una o más acciones
   //Creamos una acción, con títullo, style y handler que permite ejecutar un closure al presionar en la acción, sino queremos que se ejecute nada ponemos nil
   //Existen tres estilos: .cancel .default .destructive
   let accion = UIAlertAction(title: "OK", style: .default, handler: { (_) in print("Click en la acción OK")} )

   //Debemos añadir las acciones a la alerta
   alerta.addAction(accion)

   //Finalmente vamos a presentar la alerta
   //Indicamos que presentamos, si lo queremos animado, y si ejecuta un closure
   present(alerta, animated: true, completion: nil)

}
```

## Eliminación del Teclado

Vamos a ver dos formas de eliminar el teclado de nuestra aplicación ya que una vez que este se carga no hay forma de quitarlo.

1. La primera de ellas es cuando pulsamos en cualquier parte de la pantalla, es decir fuera del *TextField* para lo cual usamos la siguiente función.

```
//Función para eliminar el teclado de la pantalla
//Tells this object that one or more new touches occurred in a view or window.
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
   self.view.endEditing(true)
}
```

2. Podríamos querer implementar que después de presentar la alerta y pulsar en OK no nos reaparezca el teclado.
Esto sucede por que el foco se mantiene en el *TextField*, al pulsar el botón debe perder el foco y eso se logra con:

```
//Notifies this object that it has been asked to relinquish its status as first responder in its window.
nombre.resignFirstResponder()
```

