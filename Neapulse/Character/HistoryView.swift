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

            Text(charName).fontWeight(.bold)
                .font(.custom("Herculanum", size: 30))
                .multilineTextAlignment(.leading).padding(.top, 20.0)
            Image(charImage).resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Text(charText).padding(.horizontal, 25.0).foregroundColor(.gray).multilineTextAlignment(.center).fontWeight(.medium)
        }}
}

