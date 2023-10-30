//
//  AllowLocation.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 28/10/23.
//

import SwiftUI

struct AllowLocation: View {
    @ObservedObject var locationManager = LocationManager.shared
    var body: some View {
        if locationManager.userLocations == nil{
            MapView()
        }else{
            Text("Location not Allowed")
        }
    }
}

#Preview {
    AllowLocation()
}
