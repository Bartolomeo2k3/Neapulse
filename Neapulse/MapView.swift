//
//  MapView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let napoli = CLLocationCoordinate2D(latitude: 40.8517746, longitude:14.2681244)
   /* init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("--  \(fontName)")
            }
                    
        }
    }*/
    var body: some View {
        
        NavigationStack{
            
            VStack(alignment: .leading){
                Text("Mappy")
                  .font(.largeTitle)
                  .bold()
                Text("Find new places you're going to love")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                  
                    
                Map(){
                    Marker("Napoli",coordinate: napoli)
                       
                }
                
                .frame(height:500)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                .padding()
                .mapStyle(.imagery)
            }.padding()
            Text("Megl sul ca mal accompagnat")
              
            
                .font(.custom("Herculanum", size: 20))
           
                .multilineTextAlignment(.leading)
            
        }
       
    }
}

#Preview {
    MapView()
      }
