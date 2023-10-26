//
//  Food.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 20/10/23.
//

import SwiftUI

struct Food: View {
    var body: some View {
        ZStack{
            Color.blue
            NavigationStack{
                
                ScrollView{
                    
                    VStack(alignment:.leading){
                        VStack(alignment:.leading){
                            Image("pizza")
                                .resizable().clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: 300, height: 300).padding()
                            Text("Food")
                                .font(.title)
                                .bold()
                            
                            Text("Find new places you're going to love")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.gray)
                        }.padding()
                        
                        
                        
                        
                    }.clipShape(RoundedRectangle(cornerRadius: 15))
                        .navigationTitle("LifeStyle")
                    
                }
                
            }
        }}
}

#Preview {
    Food()
}
