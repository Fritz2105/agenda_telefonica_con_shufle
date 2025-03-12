//
//  pantalla_agregar_contacto.swift
//  Agenda Shufle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    @State private var imagen_seleccionada: String = "imagen"
    
    let esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    var boton_salir: () -> Void = {
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    var boton_agregar: (_ nombre: String, _ numero: String, _ imagen: String) -> Void = {nombre, numero, imagen in
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    
    var body: some View {
        VStack{
            Text("Nombre de contacto:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxWidth: 350)
        }
        
        ZStack{
            Rectangle()
                .frame(maxWidth: 370, maxHeight: 75)
                .foregroundColor(Color.cyan)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            TextField("Nombresito", text: $nombre)
                .frame(maxWidth: 340)
                //.border(Rectangle(), width: 15)
                .padding(10)
        }
        
        VStack{
            Text("Número telefónico:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxWidth: 350)
        }
        ZStack{
            Rectangle()
                .frame(maxWidth: 370, maxHeight: 75)
                .foregroundColor(Color.cyan)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        TextField("Numerito", text: $numero_telefonico)
                .frame(maxWidth: 340)
            .padding(10)
        }
        HStack{
            // Este icono es para agregar a un contacto
            ZStack{
                Circle()
                    .shadow(color:.blue, radius: 2.5)
                    .opacity(0.9)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .offset(x: -80 , y:50) //para la posicion
                
                Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus",
                      padding: 10)
                .frame(maxWidth: 370)
                .foregroundColor(Color.init(red:200, green:0, blue:45))
                .font(.system(size: 50)) //para el tamaño
                .shadow(color: .pink, radius: 1)
                .offset(x:-83 , y:50) //para la posicion
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico, imagen_seleccionada)
                }
            
            }
            
            Spacer()

            ZStack{
                Circle()
                    .shadow(color:.blue, radius: 2.5)
                    .opacity(0.9)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .offset(x: -15 , y:50) //para la posicion
                // Este es para salir
                Icono(tamaño: 65, ruta_icono: "return")
                    .foregroundColor(Color.init(red:200, green:0, blue:45))
                    .offset(x: -15 , y:50) //para la posicion
                    .onTapGesture {
                        boton_salir()
                    }
            }
            
            
                        
        }

    }
    
}


#Preview {
    PantallaAgregarContacto()
}
