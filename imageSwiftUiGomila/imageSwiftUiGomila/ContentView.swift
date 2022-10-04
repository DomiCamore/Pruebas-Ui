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
         // importante zona de trabajo
            .frame(width:300)
//            .clipped()
//            .clipShape(Capsule())
            .opacity(0.9)
           
            .overlay(
//                Image(systemName:"heart.fill")
//            .font(.system(size: 60))
//                    .foregroundColor(.pink)
//                    .opacity(0.5)
                
//                Text("que ganas de volver a new york,peru,bvbehvb vbehbv y despues del viaje ")
//                    .fontWeight(.bold)
//                    .font(.system(.headline,design:.rounded))
//                    .foregroundColor(.red)
//                    .padding()
//                    .background(Color.gray)
//                    .cornerRadius(10)
//                    .padding()
//                ,
//                    alignment: .bottom
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay(
                    Text("New York")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width:250)
                    )
            )
     
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
    
}
