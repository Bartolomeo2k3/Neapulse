//
//  CharacterModel.swift
//  Neapulse
//
//  Created by Vitor Kalil on 25/10/23.
//

import Foundation
import UIKit
import _MapKit_SwiftUI

struct Character{
    var id: UUID = UUID()
    var name:String
    var points:Float = 0
    var history:String = ""
    var caracteristic:String = ""
    var image:String = "noimage"
    var places:[Marker] = [Marker("Teatro San Ferdinando", coordinate: CLLocationCoordinate2D(latitude: 40.8517746, longitude: 14.2681244))]
    
}
