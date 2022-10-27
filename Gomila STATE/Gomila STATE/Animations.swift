//
//  Animations.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/25/22.
//

import SwiftUI

struct Animations: View {
    //las 3 cosas que cambian de acuerdo a un ESTADO
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false

    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 180,height: 180)
                .foregroundColor(buttonColorChanged ? Color(.systemGray4) : .green)
                
            
            Image(systemName: "brain")
                .font(.system(size: 80))
                .foregroundColor(buttonColorChanged ? Color(.systemRed) : .black)
                //tamano de icon al pulsar
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
               
            }
        // tiempo de transicion todo
       // .animation(.easeOut, value: show)....
        
        
        // CLOUSURE controlar  CAMBIA EL ESTADO withAnimation x cada animacion Explicita
        .onTapGesture {
            withAnimation(.spring(response: 0.5,dampingFraction: 0.1, blendDuration: 0.5)) {
                
                self.buttonColorChanged.toggle()
                self.iconColorChanged.toggle()
                
               
            }
            self.iconSizeChanged.toggle()
        }
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
