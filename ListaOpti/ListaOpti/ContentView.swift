//
//  ContentView.swift
//  ListaOpti
//
//  Created by Miguel Otero on 11/7/22.
//

import SwiftUI




struct ContentView: View {
    
    //creando matriz let [Struct][creando elementos con su constructor] solo esta creado no esta en view
    let articulos : [ArticuloItem] = [
        ArticuloItem(title: "Corazon", icon: "person.circle"),
        ArticuloItem(title: "Profile", icon: "bell"),
        ArticuloItem(title: "Activity", icon: "house"),
        ArticuloItem(title: "Settings", icon: "gear"),
        ArticuloItem(title: "Airplane", icon: "star"),

    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading) {
                    
                    // 3 Iterar presentar view
                    
                    ForEach(articulos) { articulo in
                        Label {
                            Text(articulo.title)
                            //llamando systemName
                        } icon: {
                            Image(systemName: articulo.icon)
                            
                        }.font(.system(size: 32,weight: .bold,design: .rounded))
                            .foregroundColor(.red)
                            .padding()
                            .onTapGesture {
                                print("tapped")
                            }
                        
                        //llevo todo a la izquierda,pinto lineas divider
                        Divider()
                        
                    }
                    
                } .navigationTitle("Titulo Label")
                
            }
        }
    }
}
//2
struct ArticuloItem : Identifiable{
    var id = UUID()
    var title: String
    var icon : String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iphone se")
    }
}
