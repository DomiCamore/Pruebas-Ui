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
        ScrollView(.horizontal) {
            
            VStack() {
                Text("Juan Gabriel Gomila")
                    .font(.system(.largeTitle,design:.rounded))
                Image("machupicchu")
                Text("Subtitulo")
                    .foregroundColor(<#T##color: Color?##Color?#>)
                Text("Subtitulo 2 ")
            }
            
                
                HStack {
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "DISEÑO DE APP PARA IOS 13 CON SWIFT UI DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "curso de probalididad y variables DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width: 300)
                    
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "Curso de videojuegos unity  DESDE O", originalPrice: "14.00", discountPrice: "12.99")
                        .frame(width:300)
                    
                    
                }
            Spacer()
            }
     
        }
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    }
