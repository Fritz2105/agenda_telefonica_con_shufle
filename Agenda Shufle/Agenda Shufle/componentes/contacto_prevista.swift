//
//  contacto_prevista.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


let contato_prueba = ContactoAgenda(nombre: "Josefino", telefono: "12345")

struct ContactoPrevista: View {
    var contacto_a_mostar: ContactoAgenda
    var al_pulsar: () -> Void = { print("No se ha implementado") }
    
    let esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
            
            VStack {
                Image("imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                    .background(Color.blue)
                    
            }.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading,
            spacing: 10){
                Text(contacto_a_mostar.nombre)
                Text(contacto_a_mostar.telefono)
            }
                .background(Color.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Spacer()
        }
        .frame(width: 250)
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        .onTapGesture {
            al_pulsar()
        }
        
        Spacer()

    }
}

#Preview {
    ContactoPrevista(contacto_a_mostar: contato_prueba)
}
