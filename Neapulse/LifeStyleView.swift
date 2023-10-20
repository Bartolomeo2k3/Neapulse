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

                    Text("Find new places you're going to love")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        
                    NavigationLink(destination: Neapulse.Food()) {
                        Image("Food")
                    }
                    
                    
                    Text("Attraction")
                        .font(.title)
                        .bold()
                        .padding(.top, 25.0)
                    Text("Find new places you're going to love")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        
                    NavigationLink(destination: Neapulse.Attraction()) {
                        Image("Attraction")
                    }
                    
                    Text("Folklore")
                        .font(.title)
                        .bold()
                        .padding(.top, 25.0)
                    Text("Find new places you're going to love")
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
