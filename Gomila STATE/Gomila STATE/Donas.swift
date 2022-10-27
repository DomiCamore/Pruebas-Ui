//
//  Donas.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/25/22.
//

import SwiftUI

struct Donas: View {
    private var trackGradient = LinearGradient(gradient: Gradient(colors: [Color(red:50/255, green: 150/255, blue:230/255), Color(red:70/255, green:180/255, blue:240/255)]), startPoint: .trailing, endPoint:.leading)
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0.0,to: 0.3)
                .stroke(Color(.brown),lineWidth: 60)
            Circle()
                .trim(from: 0.3,to: 0.5)
                .stroke(Color(.systemPink),lineWidth: 60)
            Circle()
                .trim(from: 0.5,to: 0.75)
            
                .stroke(Color(.orange),lineWidth: 60)
            Circle()
                .trim(from: 0.75,to: 1.0)
                .stroke(trackGradient,lineWidth: 70)
                .overlay(
                    Text("25%")
                        .font(.system(size: 25,design: .rounded))
                        .foregroundColor(.white)
                        .offset(x: 90,y: -90)
                       
                
                )
        }
        .frame(width: 250,height: 250)
      
    }
}

struct Donas_Previews: PreviewProvider {
    static var previews: some View {
        Donas()
    }
}
