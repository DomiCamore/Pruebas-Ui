//
//  ContentView.swift
//  view
//
//  Created by Miguel Otero on 11/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack(alignment :.leading,spacing: 4) {
       
            StatusView()
            
            DetailView()
            
            
            VStack {
                TrackView()
            }.padding()
            
           
            
        }
        
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("Iphone se")
        
    }
}

struct DetailView: View {
    var body: some View {
        VStack (alignment:.leading){
            Text("Metodo de despacho:")
                .font(.system(.caption))
                .foregroundColor(Color(cgColor: CGColor(red: 51/255, green: 51/255 , blue: 51/255, alpha: 1 )))
                .padding(.bottom,1)
            
            Text("Envio Domicilio")
                .font(.system(size: 14))
                .padding(.bottom,10)
            
            ///
            
            Text("Destino:")
                .font(.system(.caption))
                .foregroundColor(Color(cgColor: CGColor(red: 51/255, green: 51/255 , blue: 51/255, alpha: 1 )))
                .padding(.bottom,1)
            
            
            
            Text("CR 8 C 186 67 TO 8 AP 204")
                .font(.system(size: 14))
                .padding(.bottom,10)
            
            ///
            Text("Fecha de entrega:")
                .font(.system(.caption))
                .foregroundColor(Color(cgColor: CGColor(red: 51/255, green: 51/255 , blue: 51/255, alpha: 1 )))
                .padding(.bottom,1)
            
            
            
            Text("vie. 01 de Abr.")
                .font(.system(size: 14))
            
            ZStack {
                Image("ToolImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 110)
                    .padding(.leading,27)
                
                ZStack {
                    
                    
                    Text("ENVIO EN 1 HORA")
                        .font(.system(size: 7))
                        .background(Color(CGColor(red: 181/255, green: 0/255, blue: 147/255, alpha: 1)))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .offset(x: 30,y:-50)
                    
                }
                
                
                
            }
            
        }.padding([.leading,.trailing],10)
    }
}

struct StatusView: View {
    var body: some View {
        HStack{
            Text("Estado:")
                .font(.system(size: 12))
                .padding(.leading,4)
                .padding(.top,4)
                .padding(.bottom,4)
            Spacer()
            
            
            Text("Orden Confirmada")
                .font(.system(size: 12))
            
            
            
            Image(systemName:"checkmark.circle")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.green, .green)
                .background(Color.white)
            
                .font(.system(size: 16))
            
                .padding(.trailing,4)
            
            
        }
        .background(Color(CGColor(red: 199/255, green: 218/255, blue: 244/255, alpha: 1)))
        .padding([.leading,.trailing],10)
        .padding(.bottom)

    }
}
