//
//  TrackView.swift
//  view
//
//  Created by Miguel Otero on 11/4/22.
//

import SwiftUI

struct TrackView: View {
    var blackColor = CGColor(red: 51/255, green: 51/255 , blue: 51/255, alpha: 1 )
    var greenColor = CGColor(red: 110/255, green: 207/255 , blue: 129/255, alpha: 1 )
    var grayDarkColor = CGColor(red: 51/255, green: 51/255 , blue: 51/255, alpha: 1 )
 
    
    var body: some View {
        HStack {
            
            //tracker Image
            ZStack{
                
                
                VStack (spacing:-1){
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(Color(greenColor))
                        .fontWeight(.bold)
                    
                    Rectangle()
                        .frame(width: 2,height: 28)
                        .foregroundColor(Color.green)
                    
                    
                    //
                    
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30,height: 30)
                        .foregroundColor(Color(greenColor))
                    
                    Rectangle()
                        .frame(width: 2,height: 44)
                        .foregroundColor(Color.gray)
                    //
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 2,height: 16)
                        .foregroundColor(Color.gray)
                    //
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 2,height: 16)
                        .foregroundColor(Color.gray)
                    //
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                    
                    
                    
                }
                .offset(y:-4)
                
                
                
                
            }
            
            VStack(alignment: .leading) {
                Text("Orden Confirmada")
                    .font(.system(.caption))
                    .fontWeight(.bold)
                    .foregroundColor(Color(greenColor))
                
                Text("30/03/22")
                    .font(.system(.caption))
                    .foregroundColor(Color(greenColor))
                    .padding(.bottom,10)
                
                
                VStack(alignment: .leading) {
                    Text("Preparando tu compra")
                        .font(.system(.caption))
                        .fontWeight(.bold)
                        .foregroundColor(Color(greenColor))
                    Text("30/03/22")
                        .font(.system(.caption))
                        .foregroundColor(Color(greenColor))
                    
                   
                    // BUTTON
                    Button(action: { print("Action pulsado")}, label:{
                        Text("Cancelar esta entrega")
                            .font(.system(size: 10))
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .padding([.leading,.trailing],45)
                            .padding([.top,.bottom],5)
                          
                            .background(Color.white)
                            .overlay (
                                RoundedRectangle(cornerRadius: 3)
                                // stroke (relleno)corte(va todo el interior)
                                    .stroke(Color.blue,lineWidth: 1)
                            ).padding(.bottom,6)
                            
                        }
                           
                    )
                    Text("Compra lista para enviar")
                        .font(.system(.caption))
                        .foregroundColor(Color(grayDarkColor))
                        .padding(.bottom,10)
                    //
                    Text("Compra enviada")
                        .font(.system(.caption))
                        .foregroundColor(Color(grayDarkColor))
                        .padding(.bottom,10)
                    
                    Text("Compra entregada")
                        .font(.system(.caption))
                        .foregroundColor(Color(grayDarkColor))
                        .padding(.bottom,10)
                   
                }
              
                
                
            }
            
            
            
        }
        
    }
}


struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        TrackView()
    }
}
