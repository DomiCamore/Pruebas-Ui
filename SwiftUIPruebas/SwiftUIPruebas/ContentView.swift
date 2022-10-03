//
//  ContentView.swift
//  SwiftUIPruebas
//
//  Created by Joseph Estanislao Calla Moreyra on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Un texto es una composición de signos codificados en un sistema de escritura que forma una unidad de sentido.jnwdbwkjbcjcbwqkjcbwjcbwkcbkb")
            .fontWeight(.bold)
            .font(.custom("Arial", size: 25))
            .foregroundColor(.red)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.middle).lineSpacing(8)
            .padding(15)
//            .rotationEffect(.degrees(15),anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.degrees(50), axis:
                                (x: 1, y: 0, z: 0))
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
