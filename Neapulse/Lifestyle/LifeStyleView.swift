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
                    
                    Text("Attractions")
                        .font(.title)
                        .bold()
                        
                    Text("Discover neapolitan magic places")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        
                    NavigationLink(destination: Neapulse.Attraction()) {
                        Image("Attraction")
                    }
                    Text("Food")
                        .font(.title)
                        .bold()
                        .padding(.top, 25.0)

                    Text("Find new foods you're going to love")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        
                    NavigationLink(destination: Neapulse.Food()) {
                        Image("Food")
                    }
                    
                
                    
                    Text("Folklore")
                        .font(.title)
                        .bold()
                        .padding(.top, 25.0)
                    Text("Find out more about neapolitan folklore")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        
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
