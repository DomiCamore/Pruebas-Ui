//
//  CardView.swift
//  ScrollView04
//
//  Created by  on 10/6/22.
//

import SwiftUI

struct CardView: View {
    
    var imageName : String
    var authorName : String
    var coursetitle : String
    var originalPrice : String
    var discountPrice : String
    
    
    
    var body: some View {
        
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
               
        
            HStack {
                VStack(alignment:.leading){
                    Text(authorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(coursetitle.uppercased())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(2)
                        
                    HStack {
                       
                        Text(originalPrice)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                       
                        Text(discountPrice)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                            
                    }
                    //importante para la prioridad del stack sobre el spacer
                }.layoutPriority(20)
                Spacer()
            }.padding()
            
            
        }
        //a toda la tarjeta
        .cornerRadius(12)
        //pinta los bordes stroke
        .overlay(RoundedRectangle(cornerRadius:12).stroke(Color(red: 130/255,green: 130/255, blue: 130/255, opacity: 0.1), lineWidth: 2))
        //padding doble
       .padding([.top,.horizontal])
       
       
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "DISEÑO DE APP PARA IOS 13 CON SWIFT UI DESDE O", originalPrice: "14.00", discountPrice: "120.99")
    }
}
