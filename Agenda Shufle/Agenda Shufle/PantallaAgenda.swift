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
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = [ContactoAgenda(nombre: "Juan", telefono: "123")]
    
    
    var body: some View {

        ScrollView {
            VStack(spacing: 10) {
                ForEach(contactos_actuales){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostar: contacto, al_pulsar: {print("Te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .background(Color.cyan)//largo de pantalla se puede borrar
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
                print("falta implementar la seccion de agregar contacto")
                mostrar_pantalla_agregar_contacto.toggle()
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
                print("falta implementar la seccion de agregar contacto")
            }
            
         
        }.background(Color.purple)
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto) {
                PantallaAgregarContacto(boton_salir: {
                    mostrar_pantalla_agregar_contacto.toggle()
                },
                boton_agregar: {nombre, numero in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                    contactos_actuales.append(contacto_nuevo)
                    mostrar_pantalla_agregar_contacto.toggle()
                })
            }


    }
}




#Preview {
    PantallaAgenda()
}
