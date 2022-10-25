//
//  Lista-1.swift
//  Button
//
//  Created by Miguel Otero on 10/21/22.
//

import SwiftUI

struct Lista_1: View {
    var body: some View {
        
    // \.self .. todos los que pertenecen unidos va a ser el id
                List {
                    Section(header: Text("Item List")) {
                        ForEach(samplePeople, id: \.self) { people in
                            HStack {
                                Text(String(people.age))
                                Text(people.first_name)
                                Text(people.last_name)
                            }
                        }
                    }
            }
        }
    struct People: Hashable {
            
            var age: Int
            var first_name: String
            var last_name: String
        }
        let samplePeople: [People] = [
            People(age: 40, first_name: "Dickerson", last_name: "Macdonald"),
            People(age: 21, first_name: "Larsen", last_name: "Shaw" ),
            People(age: 101, first_name: "Geneva", last_name: "Wilson" ),
            People(age: 8, first_name: "Jami", last_name: "Carney" )
        ]
        
    }


struct Lista_1_Previews: PreviewProvider {
    static var previews: some View {
        Lista_1()
    }
}
