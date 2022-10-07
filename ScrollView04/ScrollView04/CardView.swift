//
//  CardView.swift
//  ScrollView04
//
//  Created by Joseph Estanislao Calla Moreyra on 10/6/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        VStack{
            Image("viajero")
                .resizable()
                .frame(width: 350, height: 250)
                .aspectRatio(contentMode: .fit)
                
            
            
            HStack {
                VStack(alignment:.leading){
                    Text("JUAN GABRIEL GOMILA")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Curso de SwiftUI en udemy con ios 13 desde 0".uppercased())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        
                    HStack {
                       
                        Text("18.99$")
                            .font(.subheadline)
                            .foregroundColor(.primary)
                       
                        Text("18.99$")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                            
                    }
                    //importante
                }.layoutPriority(10)
                Spacer()
            }.padding()
            
            
        }
        //a toda la vista
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius:12).stroke(Color(red: 130/255,green: 130/255, blue: 130/255, opacity: 2), lineWidth: 2))
        .padding([.top,.horizontal])
       
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
