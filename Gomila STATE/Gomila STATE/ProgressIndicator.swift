//
//  ProgressIndicator.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/24/22.
//

import SwiftUI

struct ProgressIndicator: View {
    
    private var trackGradient = LinearGradient(gradient: Gradient(colors: [Color(red:50/255, green: 150/255, blue:230/255), Color(red:70/255, green:180/255, blue:240/255)]), startPoint: .trailing, endPoint:.leading)
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(Color(.systemGray5),lineWidth: 10)
            //tamano
                .frame(width:200,height: 200)
            
            //2do circulo azul
            Circle()
            //progreso indicado  65%
                .trim(from: 0,to: 0.75)
            //pintando
                .stroke(trackGradient,lineWidth: 20)
                .frame(width: 200,height: 200)
                .overlay(VStack{
                    Text("65%")
                        .font(.system(size:60,weight: .bold,design: .rounded))
                    Text("Numero de pasos")
                        .font(.system(.body,design: .rounded))
                        .bold().foregroundColor(Color(.systemCyan))
                       
                })
        }
        
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator()
    }
}
