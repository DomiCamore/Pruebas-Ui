//
//  CardView.swift
//  CardProduct
//
//  Created by Miguel Otero on 10/20/22.
//

import SwiftUI

struct CardView: View {
    var image: Image
    var brand : String
    var description : String
    var quantity : Int
    var imagePrice : Image
    var offerPrice : Double
    var normalPrice : Double
    
    init(image: Image, brand: String, description: String, quantity: Int, imagePrice: Image, offerPrice: Double, normalPrice: Double) {
        self.image = image
        self.brand = brand
        self.description = description
        self.quantity = quantity
        self.imagePrice = image
        self.offerPrice = offerPrice
        self.normalPrice = normalPrice
    }
    
    var body: some View {
        HStack{
            
            HStack {
                VStack{
                    self.image
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 0, maxWidth: 150, minHeight: 150, alignment: .center)
                        .clipped()
                        .overlay(
                            
                            Text("ENVIO EN 1 HORA")
                                .fontWeight(Font.Weight.medium)
                                .font(Font.system(size: 14))
                                .foregroundColor(Color.white)
                                .padding([.leading, .trailing], 4)
                                .padding([.top, .bottom], 4)
                                .background(Color("sendOneHour"))
                            
                            , alignment: .topTrailing)
                    
                    
                }
                // texto
                VStack(alignment: .leading, spacing: 6) {
                    Text(self.brand)
                        .fontWeight(Font.Weight.medium)
                    Text(self.description)
                        .font(Font.custom("Lato", size: 14))
                        .foregroundColor(Color.gray)
                    
                    HStack{
                        Text("Cantidad :")
                            .font(Font.custom("Lato", size: 12))
                            .fontWeight(.medium)
                            .foregroundColor(Color(.gray))
                        
                        Text(String(self.quantity))
                            .font(Font.custom("Lato", size: 12))
                            .fontWeight(.medium)
                            .foregroundColor(Color(.gray))
                        
                    }
                    Image("price-Internet")
                    
                    HStack(spacing: 4) {
                        Text(String.init(format: "$%.2f", arguments: [self.offerPrice]))
                            .font(Font.custom("Lato", size: 14))
                        Text("UND")
                            .font(Font.custom("Lato", size: 14))
                            .fontWeight(Font.Weight.medium)
                            .foregroundColor(Color.black)
                
                    }
                    
                    HStack(spacing: 4) {
                        Text(String.init(format: "$%.2f", arguments: [self.offerPrice]))
                            .font(Font.custom("Lato", size: 12))
                        Text("UND")
                            .font(Font.custom("Lato", size: 12))
                            .fontWeight(Font.Weight.medium)
                            .foregroundColor(Color.black)
                
                    }
                    
                    
                }
                
                .background( Color.white)
                
            }
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: Image("hammer"), brand: "Redline",description: "Martillo una 24 onzas mango fibra 15C8241", quantity: 1, imagePrice: Image("oneHour"), offerPrice: 38.900,
            normalPrice: 45.900 )
                
    }
}