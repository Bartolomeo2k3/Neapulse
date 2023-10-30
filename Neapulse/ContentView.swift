//
//  ContentView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI


struct ContentView: View {
    @State private var progress = 0.1
    var body: some View {
       
        
        VStack(spacing:35){
            
            ProgressView(value: progress)
                .progressViewStyle(.linear)
                .padding()
          
            HStack(alignment:.center){
                Text("Domanda lunghissima per capire come viene")
                    .font(.title)
                    .bold()
                    .padding()
                
                

            }.padding()
            Button{
                progress += 0.00
                    
                
            }label:{
                Text("Si")
                    .font(.title3)
                    .foregroundColor(.black)
                    .frame(width:300,height: 55)
                    .background(.white)
                    .shadow(radius:5.0)
            }
            
            Button{
                
            }label:{
                Text("No")
                    
                    .font(.title3)
                    .foregroundColor(.black)
                    .frame(width:300,height: 55)
                    .background(.white)
                    .shadow(radius:5.0)
                
            }
        }
    }
}
    #Preview {
        ContentView()
    }

