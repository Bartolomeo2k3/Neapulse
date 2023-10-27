//
//  ContentView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var variavel = false
    var body: some View {
        
            
            VStack{
                
                    Text("Ciao Ferdinando")
                    .popover(isPresented: .constant(variavel)) {
                        Text("oi")
                        Button("clicka"){variavel = false}
                    }
                        
                Button("cllick"){
                    variavel = true
                }
                
                
                
            }
            
            
            
        }
    }

#Preview {
    ContentView()
}
