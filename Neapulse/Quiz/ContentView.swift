//
//  ContentView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI

import SwiftUI
import MapKit

extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}

struct Place: Identifiable {
    var id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let color: Color
}
struct ContentView : View {
    //40.854190, 14.243062/
    
    var personagens = CharacterList().characters
    @State var c = UserDefaults.standard.integer(forKey: "my_var")
    @State var region = MKCoordinateRegion(center:.init(latitude: 40.854190,
                                                       longitude: 14.243062),
                                               latitudinalMeters: 7000,
                                              longitudinalMeters: 7000)
    
    
    var body: some View {
        
        Map {
            ForEach((1...4).reversed(), id: \.self) { a in
                personagens[c].places[a]
              }
            
        }.onAppear(perform: {
            var b = 0
            for char in personagens{
                b += 1
                if(char.name == UserDefaults.standard.string(forKey: "my_character")){UserDefaults.standard.set(b,forKey: "my_var")}
            }
        })
        .ignoresSafeArea()
    }
}
    #Preview {
        ContentView()
    }

