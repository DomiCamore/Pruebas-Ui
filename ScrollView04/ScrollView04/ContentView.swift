//
//  ContentView.swift
//  ScrollView04
//
//  Created by Joseph Estanislao Calla Moreyra on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
       
            //efecto carrousel (.horizontal),Hstack, frame,
        ScrollView {
            
            VStack() {
                Image("viajero")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 70)
                    
                   // .frame(width: 200)
                 
                
                Text("Juan Gabriel Gomila")
                    .font(.system(.largeTitle,design:.rounded))
                    .fontWeight(.bold)
               //
                Text("Uci Profesor Ceo Frogames")
                    .foregroundColor(.red)
                Text("Subtitulo Cantidad de estudiantes ")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .   fontWeight(.light)
                    
                
            }
            
                
              
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "DISEÑO DE APP PARA IOS 13 CON SWIFT UI DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                       // .frame(width:300) se limita en carrusel
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                    // .frame(width:300)se limita en carrusel
                    
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "curso de probalididad y variables DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                    // .frame(width:300)se limita en carrusel
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                    // .frame(width:300)se limita en carrusel
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                    // .frame(width:300)se limita en carrusel
                    
                    
                }
            Spacer()
            }
     
      
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    }
