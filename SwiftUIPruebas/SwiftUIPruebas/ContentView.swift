//
//  ContentView.swift
//  SwiftUIPruebas
//
//  Created by Joseph Estanislao Calla Moreyra on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hola Mundo")
            .fontWeight(.bold)
            .font(.system(size:45, design: .rounded))
            .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
