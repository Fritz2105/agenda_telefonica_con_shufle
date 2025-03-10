//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

/*
let contactos = [
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
    ContactoAgenda(nombre: "Jose", telefono: "12345"),
]
*/
enum PantallasDisponibles: String, Identifiable
{
    case pantalla_agregar, pantalla_aleatorio
    
    var id: String { rawValue }
}

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = [ContactoAgenda(nombre: "Juan", telefono: "123")]
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                ForEach(contactos_actuales){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostar: contacto, al_pulsar: {print("Te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            //.background(Color.cyan)//largo de pantalla se puede borrar
            .frame(width: largo_de_pantalla, alignment: Alignment.center)
        }
        .background(Color.yellow)//color del fondo de la app
        
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
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
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
                    //.background(Color.red)
                    .offset(x:0 , y:-25)
            }
            
            .padding(15)
            .onTapGesture
            {
                print("falta implementar la seccion de agregar contacto")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
            }
            
            
        }.background(Color.init(red:0, green:200, blue:192))//color rectangulo inferior
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto) {
                
            }
            .sheet(item: $pantalla_a_mostrar){ pantalla in
                switch(pantalla)
                {
                case .pantalla_agregar:
                    PantallaAgregarContacto(
                        boton_salir: {
                            pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
                        },
                        boton_agregar: {nombre, numero, imagen_seleccionada in
                            let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero, imagen:  imagen_seleccionada)
                            contactos_actuales.append(contacto_nuevo)
                            pantalla_a_mostrar = nil
                        })
                case.pantalla_aleatorio:
                    Text("Adios mundo")
                        .font(.custom("Times New Roman", fixedSize: 65))
                }
            }
    }
                
}



#Preview {
    PantallaAgenda()
}
