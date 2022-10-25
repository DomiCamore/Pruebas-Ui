//
//  Path.swift
//  Gomila STATE
//   Dibujo 2D
//

import SwiftUI

struct Path1: View {
    var body: some View {
        ZStack{
            
            Path(){ path in
                path.move(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                path.addRect(CGRect(x: 30, y: 130, width: 200, height: 120))
                
            }.fill(Color.blue)
            
           // STROKE RED
                Path(){ path in
                    path.move(to: CGPoint(x: 30, y: 130))
                    path.addLine(to: CGPoint(x: 60,y: 130))
                    path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                    path.addLine(to:CGPoint(x: 230, y: 130))
                    path.addLine(to:CGPoint(x: 230, y: 250))
                    path.addLine(to:CGPoint(x: 30, y: 250))
                    path.closeSubpath()
                }
                .stroke(Color.red,lineWidth: 10)
           
            
        }
    }
}


struct Path1_Previews: PreviewProvider {
    static var previews: some View {
        Path1()
    }
}
// definir personalizado 
struct FunnyLabel : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
        path.addRect(CGRect(x: 30, y: 130, width: 200, height: 120))
       
        return path
        
    }
    
}
