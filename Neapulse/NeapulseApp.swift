//
//  NeapulseApp.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI

@main
struct NeapulseApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                MapView()
                    .tabItem{
                        Image(systemName:"map")
                        Text("Map")
                    }
                
                CharactersView()
                    .tabItem{
                        Image(systemName:"theatermasks")
                        Text("Characters")
                    }
                
                LifeStyleView()
                    .tabItem{
                        Image(systemName:"figure.walk")
                        Text("LifeStyle")
                    }
            }
            
        
            
        }
    }
}
