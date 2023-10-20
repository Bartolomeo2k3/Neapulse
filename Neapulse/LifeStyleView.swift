//
//  LifeStyleView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI


struct LifeStyleView: View {
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
              
                VStack(alignment:.listRowSeparatorLeading){
    
                    Text("Food")
                        .font(.title)
                        .bold()
                    NavigationLink(destination: Neapulse.Food()) {
                        Image("Food")
                        }
                    
                    Text("Attraction")
                        .font(.title)
                        .bold()
                    NavigationLink(destination: Neapulse.Attraction()) {
                        Image("Attraction")
                        }
                    
                    Text("Folklore")
                        .font(.title)
                        .bold()
                    NavigationLink(destination: Neapulse.Folklore()) {
                        Image("Folklore")
                        }
                    
                }.navigationTitle("LifeStyle")
                
            }
            
        }
        
    }
    
}

#Preview {
    LifeStyleView()
}
