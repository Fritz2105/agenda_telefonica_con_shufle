//
//  patanlla_del_ganador.swift
//  Agenda Shufle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Telesforo", telefono:"6566102367")

struct patanlla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 400, height: 900)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .grayscale(0.35)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            Circle()
                .frame(width: 150)
                .foregroundColor(.yellow)
            Circle()
                .frame(width: 125)
                .foregroundColor(.cyan)
            // Este icono es para agregar a un contacto
            Icono(tamaño: 100, ruta_icono: "plus",
            padding: 10)
                .colorInvert()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                
        }
        
        Text(contacto_a_molestar.nombre)
            .background(Color.red)
        Text(contacto_a_molestar.telefono)
    }
}

#Preview {
    patanlla_del_ganador(contacto_a_molestar: contacto_alterno)
}
