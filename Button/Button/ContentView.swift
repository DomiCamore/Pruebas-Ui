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
                    
                }.padding()
                
                
                // 1.-Boton
                
                Button(action: {
                    print("Boton trash icono pulsado")
                    
                }) {
                    Image(systemName: "trash")
                    
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
                
                
                
                //2.- Boton Background red clipShape
                Button(action: {
                    print("Boton con icono pulsada")
                    
                }) {
                    Image(systemName: "trash")
                    
                    
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(.red)
                        .clipShape(Circle())
                    
                }
                
                
                //3.- imagen y texto
                Button(action: {
                    print("Boton con icono pulsada")
                    
                }) { // incrustar
                    HStack {
                        Image(systemName: "trash")
                        
                        Text("Eliminar")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                    }// modificando a toda la caja
                    
                    .padding()
                    .background(Color.red)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .cornerRadius(60)
                }
                
            }
            //4.- Gradientes
            Button(action: {
                print("Boton con icono 4 pulsada")
                
            }) { // incrustar
                HStack {
                    Image(systemName: "trash")
                    
                    Text("Eliminar")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                }// modificando a toda la caja
                // uigradients
                .frame(minWidth: 0,maxWidth: .infinity)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color("Quepal-1"),Color("Quepal-2")]),
                startPoint: .leading, endPoint: .trailing))
                .font(.largeTitle)
                .foregroundColor(.white)
                .cornerRadius(60)
                .shadow(color:.gray,radius: 10.0,x:20,y:3)
                //tamaño de boton
                .padding(.horizontal,30)
            }
            
        }
        
  
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
