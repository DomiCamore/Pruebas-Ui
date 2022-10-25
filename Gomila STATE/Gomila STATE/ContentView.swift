//
//  ContentView.swift
//  Gomila STATE
//
//Boton dinamico
//

import SwiftUI


struct ContentView: View {
    
   @State private var isPlaying = false
    
    var body: some View {
        
      //  El action del boton es un clousure
        // toggle cambia de true a false
        Button(action: {
            self.isPlaying.toggle()
        }){
            Image(systemName:isPlaying ? "stop.circle.fill": "play.circle.fill")
            .font(.system(size: 100))
            .foregroundColor(isPlaying ?.blue:.red)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
