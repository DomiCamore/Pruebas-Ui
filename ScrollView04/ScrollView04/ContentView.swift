//
//  ContentView.swift
//  ScrollView04
//
//  Created by Joseph Estanislao Calla Moreyra on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack{
            //Titulo fijo
            VStack() {
                Image("viajero")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                
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
            
            //efecto carrousel (.horizontal),Hstack(incrustar las tarjetas), utilizar frame,
            // ocultar el indicador del carrusel
            ScrollView (.horizontal,showsIndicators: false){
                
                
                
                
                
                HStack {
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "DISEÑO DE APP PARA IOS 13 CON SWIFT UI DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "curso de probalididad y variables DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                }
                Spacer()
                
            }
            VStack {
                VStack() {
                    Image("viajero")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                    
                    // .frame(width: 200)
                    
                    
                    Text("Juan Gabriel Gominola")
                        .font(.system(.largeTitle,design:.rounded))
                        .fontWeight(.bold)
                    //
                    Text("Uci Profesor Ceo Frogames Udemy")
                        .foregroundColor(.red)
                    Text("Subtitulo Cantidad de estudiantes ")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .   fontWeight(.light)
                    
                    
                }
                
                ScrollView (.horizontal,showsIndicators: false){
                    
                    
                    
                    
                    
                    HStack {
                        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "DISEÑO DE APP PARA IOS 13 CON SWIFT UI DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                            .frame(width:300)
                        
                        
                        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                            .frame(width:300)
                        
                        
                        
                        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "curso de probalididad y variables DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                            .frame(width:300)
                        
                        
                        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                            .frame(width:300)
                        
                        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                            .frame(width:300)
                    }
                    Spacer()
                    
                }
            }
        }
        
    }
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    }
