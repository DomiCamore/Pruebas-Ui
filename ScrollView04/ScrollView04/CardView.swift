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
                .frame(width: 350, height: 250)
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
                        .lineLimit(3)
                        
                    HStack {
                       
                        Text(originalPrice)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                       
                        Text(discountPrice)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                            
                    }
                    //importante
                }.layoutPriority(10)
                Spacer()
            }.padding()
            
            
        }
        //a toda la vista
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius:12).stroke(Color(red: 130/255,green: 130/255, blue: 130/255, opacity: 2), lineWidth: 2))
        .padding([.top,.horizontal])
       
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "machupicchu", authorName: "Juan Gabriel Gomila", coursetitle: "DISEÑO DE APP PARA IOS 13 CON SWIFT UI DESDE O", originalPrice: "14.00", discountPrice: "12.99")
    }
}
