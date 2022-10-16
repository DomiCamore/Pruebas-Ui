//
//  ContentView.swift
//  home
//
//  Created by Wigilabs on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            
            HStack{
                ZStack{
                    
                    ImageView(imageView: "hammer_520032",
                              imageOneHour: "oneHour-label")
                    
                    
                }.padding()
                
                
                VStack (alignment: .leading){
                    DescriptionProductView(brandLabel: "Redline",
                                           productLabel: "Martillo una 24 onzas \nmango fibra 15C8241",
                                           quantity: "Cantidad : ",
                                           amount: "1",
                                           imagePrice: "price-Internet",
                                           price2: "$38.900",
                                           typeQuantity: "UND",
                                           statePriceLabel: "Normal :",
                                           Price1:"$46.900", fontCustomMedium: "Lato-Regular.ttf")
                    
                }
                
                
            }
            
            
            .background(Color(.green))
            .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 294, height: 60))
    }
}
struct DescriptionProductView: View {
    
    var brandLabel :String
    var productLabel : String
    var quantity : String
    var amount : String
    var imagePrice : String
    var price2 : String
    var typeQuantity : String
    var statePriceLabel : String
    var Price1 : String
    var fontCustomMedium : String
    
    
    var body: some View {
        
        HStack{
            VStack(alignment:.leading){
                Text(brandLabel)
                    .font(Font.custom(fontCustomMedium, size: 14.0))
                    .fontWeight(.bold)
                    .foregroundColor(Color("neutral-gray-cold"))
                
                
               
                    Text(productLabel)
                        .font(Font.custom(fontCustomMedium, size: 16.0))
                        .foregroundColor(Color("neutral-gray-base"))
                        .lineLimit(2)
                        .padding(0)
                   
                    
            
                
                HStack {
                    Text(quantity)
                        .font(Font.custom(fontCustomMedium, size: 14))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("neutral-gray-cold"))
                    
                    Text(amount)
                        .font(Font.custom(fontCustomMedium, size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                    
                }
                
                Image(imagePrice)
                
                //  precio Internet-price normal
                HStack {
                    Text(price2.uppercased())
                        .font(Font.custom(fontCustomMedium, size: 17.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-base"))
                    
                    Text(typeQuantity.uppercased())
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-base"))
                    
                }
                
                
                HStack {
                    Text(statePriceLabel)
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                        .lineLimit(2)
                    
                    Text(Price1)
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                    
                    Text(typeQuantity)
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                    
                    
                }
                
                
                
            }
            
            
            
            
            
        }
        
    }
}

struct ImageView: View {
    var imageView :String
    var imageOneHour: String?
    
    var body: some View {
        
        Image(imageView)
            .resizable()
            .scaledToFit()
            .offset(x:12.0,y:-12)
        
        
        
        
        
        
        imageOneHour.map({
            Image($0)
                .offset(x:35.0,y:-72)
            
            
        })
        
    }
}
