//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contactos = [
    ContactoAgenda(nombre: "Juan", telefono:"12345"),
    ContactoAgenda(nombre: "Ramon", telefono:"12345"),
    ContactoAgenda(nombre: "Juanita", telefono:"12345"),
    ContactoAgenda(nombre: "Jose", telefono:"12345"),
    ContactoAgenda(nombre: "Maria", telefono:"12345"),
    ContactoAgenda(nombre: "Omar", telefono:"12345"),

]

struct PantallaAgenda: View {
    var body: some View {
        
        List{
            VStack {
                ForEach(contactos){ contacto in //nos imprime la vista ese numero de veces
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
            }
            .background(Color.yellow)
        }
    }
}

/*
modelo: MVC Controlador(iniciar sesion, login automatico)
modelos: modelo vista vistamodelo
modelo modelo vista (vista controlador modelo)

*/
#Preview {
    PantallaAgenda()
}
