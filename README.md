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


