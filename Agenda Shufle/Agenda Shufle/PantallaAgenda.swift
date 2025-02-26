//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct PantallaAgenda: View {
    var body: some View {
        
        List{
            VStack {
                ForEach(0...45, id: \.self){ _ in //nos imprime la vista ese numero de veces
                    ContactoPrevista()
                }
            }
            .background(Color.yellow)
        }
    }
}

#Preview {
    PantallaAgenda()
}
