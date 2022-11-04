//
//  Listas2.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/28/22.
//

import SwiftUI

struct Listas2: View {
    
    
   
    var body: some View {
       
        HStack{
            Image("Boat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                                 .frame(width: 50,height: 50)
                                 .clipped()
                                 .cornerRadius(25)
                             
            Text("El viaje fue facinante,aventurero y de buenas experiencias")
                .font(.system(.subheadline))
                
            
        }
    }
   
}


//1
struct Persona : Identifiable{
    var id: UUID
    var name: String
    var Image : String
    
  
  
    
}


struct Listas2_Previews: PreviewProvider {
    static var previews: some View {
        Listas2()
    }
}
