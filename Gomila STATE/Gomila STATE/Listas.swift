//
//  Listas.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/25/22.
////            ForEach(1...5, id: \.self){ index in    //    Text("Fila \(index)")

import SwiftUI

struct Listas: View {
    var courses = [
        Course(name: "Probabilidad y variables Aleatorias para MA", image:"Capa"),
        Course(name: "Viaje por Crucero", image: "Premium",feature: true),
        Course(name: "Delivery envio a domicilio" , image: "Delivery"),
        Course(name:  "Cara feliz dia especial,aniversario", image: "Boat" ),
        Course(name: "Importacion de productos vendidos", image: "Apple")
        
    ]
    
    var body: some View {
    
        // destacar un Course
        List(courses.indices, id: \.self) { idx in
            if self.courses[idx].feature{
         
                CoursesfullImageRow(course:self.courses [idx])
            }else{
                CourseRow(course: self.courses[idx])
                
            }
        }
    }
    
    
    struct Course: Identifiable {
        var id = UUID()
        var name : String
        var image : String
        var feature : Bool = false
        
    }
    //id.id
    //genera un numero unico aleatorio
    //UUID() nro de 128 bit
    
    struct CourseRow: View {
        var course : Course
        var body: some View {
            HStack(spacing: 10){
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50,height: 50)
                    .clipped()
                    .cornerRadius(25)
                
                Text(course.name)
            }
        }
    }
    
    struct CoursesfullImageRow: View {
        var course : Course
        var body: some View {
            
            ZStack{
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .padding()
                    .cornerRadius(15)
                  
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.gray)
                            .opacity(0.20)
                    )
                Text(course.name)
                    
                    .font(.system(.subheadline ,design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}
    struct Listas_Previews: PreviewProvider {
        static var previews: some View {
            Listas()
            //        CoursesfullImageRow()
        }
    }
