//
//  ContentView.swift
//  CardProduct
//
//  Created by Miguel Otero on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(image: Image("hammer"), brand: "Redline",description: "Martillo una 24 onzas mango fibra 15C8241", quantity: 1, imagePrice: Image("oneHour"), offerPrice: 38.900,
            normalPrice: 45.900 )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
