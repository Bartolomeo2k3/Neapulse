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
              
                VStack(alignment:.leading){
                    
                    Text("Food")
                        .font(.title)
                        .bold()
                    NavigationLink(destination: Neapulse.Food()) {
                        Image("Food")
                    }
                    
                    
                    Text("Attraction")
                        .font(.title)
                        .bold()
                        .padding(/*@START_MENU_TOKEN@*/.top, 36.0/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: Neapulse.Attraction()) {
                        Image("Attraction")
                    }
                    
                    Text("Folklore")
                        .font(.title)
                        .bold()
                        .padding(.top, 36.0)
                    NavigationLink(destination: Neapulse.Folklore()) {
                        Image("Folklore")
                        
                    }
                    
                    
                }
                .padding()
                .navigationTitle("LifeStyle")
                
            }
            
        }
        
    }
    
}

#Preview {
    LifeStyleView()
}
