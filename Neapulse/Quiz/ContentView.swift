//
//  ContentView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI

import SwiftUI
import MapKit


struct ContentView : View {
    //40.854190, 14.243062/
    
    var personagens = CharacterList().characters
    var myIndex = ["Munaciello", "Federico II","Bella'Mbriana", "Virgilio", "Partenope", "Pulcinella", "Giovanna II",  "Pazzariello","San Gennaro","Posillipo","Sibilla Cumana",  "Colapesce"].firstIndex(of: UserDefaults.standard.string(forKey: "my_character"))
    @State var region = MKCoordinateRegion(center:.init(latitude: 40.854190,
                                                       longitude: 14.243062),
                                               latitudinalMeters: 7000,
                                              longitudinalMeters: 7000)
    
    
    var body: some View {
        
        Map {
            
            ForEach(personagens[myIndex ?? 7].places){per in
                Marker(per.name, coordinate: CLLocationCoordinate2D(latitude: per.lat, longitude: per.lon))
            }
        }
        
        .ignoresSafeArea()
    }
}
    #Preview {
        ContentView()
    }

