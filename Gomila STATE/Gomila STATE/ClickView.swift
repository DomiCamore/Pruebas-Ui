//
//  ClickView.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/24/22.
//

import SwiftUI

//vista padre
struct ClickView: View {
    
    //estado global
    @State private var numClicks = 0
    
    var body: some View {
        
        VStack{
            //la variable bindeada debe ser llamada con $numClicks
            CounterView(numClicks: $numClicks, buttonColor: .purple)
            CounterView(numClicks: $numClicks, buttonColor: .red)
            CounterView(numClicks: $numClicks, buttonColor: .yellow)
        }
    }
}

struct ClickView_Previews: PreviewProvider {
    static var previews: some View {
        ClickView()
    }
}

// vista hijo subvista de ClikView Original
struct  CounterView: View {
    //variable del padre
    @Binding var numClicks:Int
    var buttonColor : Color
    
    var body: some View {
        Button(action: {
            self.numClicks += 1
        }){
            Circle()
                .frame(width: 150,height: 150)
                .foregroundColor(buttonColor)
            
                .overlay(Text("\(numClicks)")
                    .font(.system(size: 80,weight: .bold,design: .rounded))
                    .foregroundColor(.white)
                )
        }
    }
}
