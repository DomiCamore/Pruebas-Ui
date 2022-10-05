//
//  SwiftUIViewAnterior.swift
//  SwiftUIPruebas
//
//  Created by Joseph Estanislao Calla Moreyra on 10/5/22.
//
import SwiftUI

struct SwiftUIViewAnterior: View {
    var body: some View {
        VStack {
            HeaderView()
        
            
            HStack (spacing:10){
                PriceView(title: "Basico", price: "9.99", subtitle: "Un curso incluido", TextColor: .white, backgroundColor: .red)
            
                ZStack{
                PriceView(title: "Premiun", price: "12.99", subtitle: "todo esta incluido", TextColor: .black, backgroundColor:Color(red: 230/255,green: 230/255,blue: 230/255))
                    
                    //Zstack etiqueta
                Text("El mejor para empezar")
                        .font(.system(.caption,design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .padding(6)
                        .cornerRadius(20)
                        .background(Color(red:240/255,green: 180/255,blue: 50/255))
                        .offset(x: 0, y: -65)
                }
                
                // bordes entre cajas de price
            }
            .padding(.all)
            //Tercer price view
            ZStack{
                PriceView(title: "Definitivo1",
                          price: "12.99",
                          subtitle: "todo esta incluido",
                          TextColor: .white,
                          backgroundColor:.black).padding(.horizontal)
                
                //Zstack etiqueta
                Text("Conviertete en un master en el universo")
                    .font(.system(.caption,design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding(6)
                    .cornerRadius(20)
                    .background(Color(red:240/255,green: 180/255,blue: 50/255))
                    .offset(x: 0, y: -65)
            }.padding(.vertical)
            
            Spacer()
        }
    }
}


struct SwiftUIViewAnterior_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewAnterior()
    }
}

//Mark.-  Encabezado
struct HeaderView: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 4){
            Text("Elije tu itinerario")
                .font(.system(.largeTitle, design: .rounded)
                )
                .fontWeight(.black)
            
            Text("de aprendizaje")
                .font(.system(.largeTitle, design: .rounded)
                )
                .fontWeight(.black)
        }.padding(5)
    }
}

//Mark.- Vista de precios
    struct PriceView: View {
        var title:String
        var price:String
        var subtitle: String
        var TextColor:Color
        var backgroundColor:Color
        
        var body: some View {
            
            VStack{
                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(TextColor)
                Text(price)
                    .font(.system(size: 34, weight:.heavy))
                    .foregroundColor(TextColor)
                
                Text(subtitle)
                    .font(.system(size: 15, weight:.medium))
                    .foregroundColor(TextColor)
            }
             // Caja de Vista de precios
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                    minHeight: 100)
            .padding(25)
            .background(backgroundColor)
            .cornerRadius(10)
        }
    }
