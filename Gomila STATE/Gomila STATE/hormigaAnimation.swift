//
//  hormigaAnimation.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/25/22.
//

import SwiftUI

struct hormigaAnimation: View {
    // punto inicial y recorre
    @State private var offset: CGFloat = 100.0
    
    var body: some View {
    
                Image(systemName: "ant")
                    .font(Font.system(size: 100.0))
                // posicion en Y empieza
                    .offset(y: offset)
                    .shadow(radius: 30.0)
        // agrega una accion para realizar...cuando reconoce un gesto toque..avanza
                    .onTapGesture {
                        //decrementa en 50 al offset
                        // offset = offset - 50.0
                        offset -= 50.0 }
        // arrastre
                    .animation(Animation.easeInOut(duration: 0.5), value: offset)
                
            }
        }


struct hormigaAnimation_Previews: PreviewProvider {
    static var previews: some View {
        hormigaAnimation()
    }
}
