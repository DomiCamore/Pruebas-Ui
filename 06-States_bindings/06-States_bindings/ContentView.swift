//
//  ContentView.swift
//  06-States_bindings
//



import SwiftUI

struct ContentView: View {
    //monitoriar si cambio el estado que se encargue automaticamente
    @State private var isPlaying = false
    
    var body: some View {
        
        VStack {
            Button(action: {
                
                self.isPlaying.toggle()
                
            }) {
                HStack { // es verdad que esta sonando?
                    Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                        .font(.system(size: 100))
                        .foregroundColor(isPlaying ?.red : .green)
                    
                    
                    
                }
                .padding()
                
                
            }
         
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
