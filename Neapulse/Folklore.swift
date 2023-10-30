//
//  Folklore.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 20/10/23.
//

import SwiftUI

struct Folklore: View {
    @State var valore: Float = 0
    var body: some View {
        let cor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(cor))
        
        ProgressView(value: (valore/10))
        Button("Clicka"){
            valore += 1
        }
    }
}

#Preview {
    Folklore()
}
