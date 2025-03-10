//
//  contacto_agenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct ContactoAgenda: Identifiable {
    
    var nombre: String
    var telefono: String
    //aqui lo de la imagen
    var imagen: String = "imagen"
    var id: String { nombre }
  
}

/*
var nombre = "Pepito Veraz"

var _nombre: String

var nombre: set{
    let filtrar_palabras(value)
            nombre = nombre_validado
}get {
    return nombre.split(" ")[0]
}

*/
