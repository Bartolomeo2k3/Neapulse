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
                    NavigationLink(destination: Neapulse.Food()) {
                        Image("Food")
                        }
                        
                    
        
                   
                       
                       
                    
                    
                    
                    
                }.navigationTitle("LifeStyle")
                
            }
            
        }
        
    }
    
}

#Preview {
    LifeStyleView()
}
