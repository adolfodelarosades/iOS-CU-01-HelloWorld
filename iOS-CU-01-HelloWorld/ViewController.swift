//
//  ViewController.swift
//  iOS-CU-01-HelloWorld
//
//  Created by Adolfo De la Rosa on 20/07/2019.
//  Copyright © 2019 ADP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Esto se ejecuta cuando la vista se carga")
    }


    @IBAction func boton(_ sender: UIButton) {
        
        //Notifies this object that it has been asked to relinquish its status as first responder in its window.
        nombre.resignFirstResponder()
        
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
    
    //Función para eliminar el teclado de la pantalla
    //Tells this object that one or more new touches occurred in a view or window.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

