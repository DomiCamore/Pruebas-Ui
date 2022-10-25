//
//  line.swift
//  Button
//
//  Created by Miguel Otero on 10/21/22.
//

import SwiftUI

struct line: View {
    let label: String
    let horizontalPadding: CGFloat
    let color: Color
    
    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct line_Previews: PreviewProvider {
    static var previews: some View {
        line(label: "Hola")
    }
}


