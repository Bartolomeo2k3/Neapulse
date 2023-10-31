//
//  HistoryView.swift
//  Neapulse
//
//  Created by Ferdinando Liccardi on 30/10/23.
//

import SwiftUI

struct HistoryView: View {
    @Binding var charText: String
    @Binding var charName: String
    @Binding var charImage:String
    var body: some View {
        ScrollView{

            
            Image(charImage).resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(charName).fontWeight(.bold)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.leading).padding()
            Text(charText).padding(.horizontal, 25.0).foregroundColor(.gray).multilineTextAlignment(.center).fontWeight(.medium)
        }}
}

