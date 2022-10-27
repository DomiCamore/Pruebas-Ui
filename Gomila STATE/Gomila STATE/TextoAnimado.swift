//
//  TextoAnimado.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/25/22.
//

import SwiftUI

struct TextoAnimado: View {
    @State private var scale = 1.0

    var body: some View {
        Button("Press here") {
            scale += 1
        }
        .scaleEffect(scale)
        .animation(.easeOut(duration: 5.0), value: scale)
    }
}

struct TextoAnimado_Previews: PreviewProvider {
    static var previews: some View {
        TextoAnimado()
    }
}
