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
    
    var body: some View { 
        NavigationStack{
            
            VStack(alignment: .leading){
                Text("Map")
                  .font(.title)
                  .bold()
                  .padding(.leading)
                Text("Find new places you're going to love")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                    .padding(.leading)
                    
                Map(){
                    Marker("Napoli",coordinate: napoli)
                    
                }
                .frame(width:300,height:500)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                .padding()
                .mapStyle(.imagery)
            }
            Text("Megl sul ca mal accompagnat")
                .font(.body)
                .multilineTextAlignment(.leading)
            
        }
    }
}

#Preview {
    MapView()
}
