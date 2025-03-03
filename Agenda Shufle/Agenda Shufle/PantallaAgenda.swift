//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


let contactos = [
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
]


struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var body: some View {

        ScrollView {
            VStack(spacing: 10) {
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostar: contacto, al_pulsar: {print("Te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .background(Color.cyan)
            .frame(width: largo_de_pantalla, alignment: Alignment.center)
        }
        .background(Color.green)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(.cyan)
                Image(systemName: "plus")
                    .background(Color.red)
                    .offset(x:0 , y:-25)
            }
            .padding(15)
            
            
            .onTapGesture
            {
                print("Falta implementar esta parte")
            }
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .tint(Color.red)
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(.cyan)
                Image(systemName: "plus")
                    .background(Color.red)
                    .offset(x:0 , y:-25)
            }
            
            .padding(15)
            .onTapGesture
            {
                print("Lanzar un intent para iniciar la llamada")
            }
            
         
        }


    }
}




#Preview {
    PantallaAgenda()
}
