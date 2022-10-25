//
//  Curvas.swift
//  Gomila STATE
//
//  Created by Miguel Otero on 10/24/22.
//

import SwiftUI

struct Curvas: View {
    var body: some View {
        ZStack{
            
            // 1.- orange
            Path(){ path in
                //punto empieza
                path.move(to: CGPoint(x: 200,y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160,
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 200), clockwise: true)
                //            false
                
            }
            .fill(Color(.orange))
            
            // 2.-blue
            Path(){ path in
               
                path.move(to: CGPoint(x: 200,y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160,
                            startAngle: Angle(degrees: 200),
                            endAngle: Angle(degrees: 160), clockwise: true)
             
            }
            .fill(Color(.blue))
            .offset(x: -30,y: 0)
            // copia de azul interno
            Path(){ path in
               
                path.move(to: CGPoint(x: 200,y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160,
                            startAngle: Angle(degrees: 200),
                            endAngle: Angle(degrees: 160), clockwise: true)
                path.closeSubpath()
             
            }
            .stroke(Color(red:200/255,
                          green:50/255,
                          blue:120/255),
                          lineWidth: 10)
            
            .offset(x:-30,y:0)
            .overlay(
                Text("11.1 %")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .foregroundColor(.yellow)
                .offset(x: -140,y: -150)
             )
            // 3.- yellow
            Path(){ path in
                //punto empieza
                path.move(to: CGPoint(x: 200,y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160,
                            startAngle: Angle(degrees: 160),
                            endAngle: Angle(degrees: 110), clockwise: true)
                //            false
                
            }
            .fill(Color(.yellow))
           
            
            //4.- verde
            Path(){ path in
                //punto empieza
                path.move(to: CGPoint(x: 200,y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160,
                            startAngle: Angle(degrees: 110),
                            endAngle: Angle(degrees: 0), clockwise: true)
                //            false
                
            }
            .fill(Color(.green))
        }
    }
}

struct Curvas_Previews: PreviewProvider {
    static var previews: some View {
        Curvas()
    }
}
