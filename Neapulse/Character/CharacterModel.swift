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
    var places:[PinPoint] = [PinPoint(name:"Spritz ai Quartieri Spagnoli",lat: 40.842189935688204, lon: 14.247631961407778)]
    
}
