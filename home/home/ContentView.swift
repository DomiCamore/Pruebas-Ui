//
//  ContentView.swift
//  home
//
//  Created by Wigilabs on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let productData = ProductData(brandLabel: "Redline",
               productLabel: "Martillo una 24 onzas \nmango fibra 15C8241",
               quantity: "Cantidad : ",
               amount: "1",
               imagePrice: "price-Internet",
               price2: "$38.900",
               typeQuantity: "UND",
               statePriceLabel: "Normal :",
               Price1:"$46.900")
        
        ProductCell(productData: productData)
        
    }
}

struct ProductData {
    var brandLabel :String
    var productLabel : String
    var quantity : String
    var amount : String
    var imagePrice : String
    var price2 : String
    var typeQuantity : String
    var statePriceLabel : String
    var Price1 : String
}

struct ProductCell: View {
    
    var productData: ProductData
    var fontCustomMedium = "Lato-Regular.ttf"
    
    var body: some View {
        
        HStack {
            ZStack(alignment: .topTrailing) {
                Image("hammer_520032")
                    .resizable()
                    .scaledToFit()
                
                Image("oneHour-label")
                    .frame(width: 96, height: 20)
                
            }.padding(EdgeInsets(top: 9, leading: 10, bottom: 27, trailing: 0))
                .background(Color(.white))
                .frame(minWidth: 0, maxWidth: 140)
            
            VStack(alignment:.leading){
                Text(productData.brandLabel)
                    .font(Font.custom(fontCustomMedium, size: 14.0))
                    .fontWeight(.bold)
                    .foregroundColor(Color("neutral-gray-cold"))
                
                Text(productData.productLabel)
                    .font(Font.custom(fontCustomMedium, size: 16.0))
                    .foregroundColor(Color("neutral-gray-base"))
                    .lineLimit(2)
                
                HStack {
                    Text(productData.quantity)
                        .font(Font.custom(fontCustomMedium, size: 14))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("neutral-gray-cold"))
                    
                    Text(productData.amount)
                        .font(Font.custom(fontCustomMedium, size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                }
                
                Image(productData.imagePrice)
                
                //  precio Internet-price normal
                HStack {
                    Text(productData.price2.uppercased())
                        .font(Font.custom(fontCustomMedium, size: 17.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-base"))
                    
                    Text(productData.typeQuantity.uppercased())
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-base"))
                    
                }
                
                HStack {
                    Text(productData.statePriceLabel)
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                        .lineLimit(2)
                    
                    Text(productData.Price1)
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                    
                    Text(productData.typeQuantity)
                        .font(Font.custom(fontCustomMedium, size: 14.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("neutral-gray-cold"))
                }
            }
        }
        .background(Color(.white))
        .frame(maxWidth: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
