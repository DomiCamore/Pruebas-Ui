//
//  ListaDetailView.swift
//  Gomila2
//
//  Created by Miguel Otero on 10/31/22.
//

import SwiftUI
//
struct ListaDetailView: View {
 
    var course: Course
   
    var body: some View {
     
        VStack{
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .clipped()
            
            Text(course.name)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .lineLimit(2)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
        } .navigationBarTitle("Holita", displayMode: .inline)
    
    }
}

struct ListaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDetailView(course: Course(name: "Curso Completo de Ios con swift Ui", image: "Delivery"))
    }
}
