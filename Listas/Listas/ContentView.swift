//
//  ContentView.swift
//  Listas
//
//  Created by Miguel Otero on 10/28/22.
//

import SwiftUI

struct ContentView: View {
   // 2.-
   
    // 3.1 creamos una variable con Texto name e imagen en una structura ya declarada al pie
    var personasInfo = [
        PersonasInfo(name: "Pedro Madera Carroceria", image:"Boat"),
        PersonasInfo(name: "Maribel Viajes, aventuras,playa ,campo", image:"Hawai"),
        PersonasInfo(name: "Juan" ,image:"tajMahalPhoto"),
        PersonasInfo(name: "Maria" ,image:"Paradise"),
    ]
    
    
    var body: some View {
        
       
       // 1.- Crear la Lista
        List {    //
            ForEach(personasInfo, id: \.name){ persona in
                HStack{
                    Image(persona.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80,height: 80)
                        .clipped()
                    
                    //Pinta los Textos
                    
                    Text(persona.name)
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                    
                    
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// 3 aglutinar la imagen y name,necesitamos un id para que no se repita
struct PersonasInfo {
    var name: String
    var image: String
}
