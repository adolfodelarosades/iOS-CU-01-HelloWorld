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

## LaunchScreen

Vamos a darle un diseño sencillo a nuestra *LaunchScreen.storyboard* para poder ver algo más que una pantalla en blanco mientras se carga nuestra APP

Estando en el LauchScreen.storyboard

1. Añadimos un color de fondo.

2. Añadimos una imagen a nuestros *Assets* en este caso se llama *logo.png* simplemente arrastramos la imagen a los Assets, la imagen se nos pide en tamaño 1x, 2x y 3x pero como solo tenemos un único tamaño, colocamos el logo.png en 3x y Xcode se encargará de redimencionar a los otros tamaños.

3. En nuesto LaunchScreen insertamos un *imageView*

4. En los atributos de la *ImageView* ponemos la *Image* = *logo* y en *Content mode* = *Aspect fit* para que se vea bien la imagen. Hay diferentes formas para presenta la imagen las cuales podemos probar.

5. Añadimos los Constrains

Listo eso es todo cuando ejecutemos nuestra APP ya vemos una LauchScreen y no solo una pantalla blanca.


