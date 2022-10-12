//
//  ContentView.swift
//  Button
//
//  Created by on 11/10/22.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            
            VStack {
                VStack{
                  
                    Button(action: {
                        // QUE DEBE HACER EL BOTTON <--
                        print("Hola Pulsado")
                        
                    }) {
                        // como debe verse el botton
                        // texto estilo - ancho texto - padding
                        // Color fondo - color de texto
                        Text("Hola mundo!!")
                            .font(.largeTitle)
                            .fontWeight(.black)
                        
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(50)
                        
                            .padding(12)
                            .overlay (
                           RoundedRectangle(cornerRadius: 50)
                           // stroke (relleno)corte(va todo el interior)
                        .stroke(Color.green,lineWidth: 5)
                            )
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
