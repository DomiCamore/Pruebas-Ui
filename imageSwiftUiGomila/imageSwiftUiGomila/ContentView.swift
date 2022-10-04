//
//  ContentView.swift
//  imageSwiftUiGomila
//
//  Created by Joseph Estanislao Calla Moreyra on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        Image(systemName: "paperplane")
//            .font(.system(size: 80))
//            .foregroundColor(.green)
//            .shadow(color: .pink, radius: 5, x: 10, y: 0)
//            }
        Image("ardilla")
            .resizable()
            .edgesIgnoringSafeArea(.vertical)
        //imagen correcta sin ajustar 100%
//            .scaledToFit()
        //imagen correcta completa la pantalla
//            .aspectRatio(contentMode:.fill)
//            .edgesIgnoringSafeArea(.vertical)
        // enmarcado
            .aspectRatio(contentMode:.fill)
//            .frame(width:300)
//            .clipped()
//            .clipShape(Capsule())
            .opacity(0.5)
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
    
}
