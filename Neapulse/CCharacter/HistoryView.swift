//
//  HistoryView.swift
//  Neapulse
//
//  Created by Ferdinando Liccardi on 30/10/23.
//

import SwiftUI

struct HistoryView: View {
    
    var character: Character
    
    var body: some View {
            VStack {
                Image(learner.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 250)
                    .padding()
                Text("\(learner.name) \(learner.surname)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(learner.favouriteColour)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(learner.description)
            }
        }
    }
}

#Preview {let character = Character(name: "Filippo",  description: "Some description", image: "filippo")
    HistoryView()
}
