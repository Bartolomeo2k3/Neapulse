//
//  MapView.swift
//  Neapulse
//
//  Created by Bartolomeo Davide Ventrone on 18/10/23.
//

import SwiftUI
import MapKit



struct MapView: View {
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    @State private var searchText = ""
    @State private var results = [MKMapItem]()
    @State private var mapSelection: MKMapItem?
    @State private var showDetails = false
    @State private var getDirections = false
    @State private var routeDisaplaying = false
    @State private var route: MKRoute?
    @State private var routeDestination: MKMapItem?
    var personagens = CharacterList().characters
    @State var myChar = UserDefaults.standard.string(forKey: "my_character")
    @State var myIndex = ["Munaciello", "Federico II","Bella'Mbriana", "Virgilio", "Partenope", "Pulcinella", "Giovanna II",  "Pazzariello","San Gennaro","Posillipo","Sibilla Cumana",  "Colapesce"].firstIndex(of: UserDefaults.standard.string(forKey: "my_character"))
    @ObservedObject var locationManager = LocationManager.shared
    
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
            ScrollView{
                VStack(alignment: .leading){
                    Text("Map")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 25.0)
                    Text(UserDefaults.standard.string(forKey: "my_character") == nil ? "Find a character to customize your map": "Find places based on your " + (myChar ?? "") + " personality")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                    Map(position: $cameraPosition, selection: $mapSelection){
                        //pins di Pazzariello
                        if (myChar != nil){
                            ForEach(personagens[myIndex ?? 11].places){per in
                                Marker(per.name, coordinate: CLLocationCoordinate2D(latitude: per.lat, longitude: per.lon))
                            }}
                        
                        ForEach(results, id:\.self){item in
                            if routeDisaplaying{
                                if item == routeDestination{
                                    let placemark = item.placemark
                                    Marker(placemark.name ?? "", coordinate: placemark.coordinate)
                                    
                                }
                                
                            }else{
                                let placemark = item.placemark
                                Marker(placemark.name ?? "", coordinate: placemark.coordinate)
                            }
                            
                        }
                        if let route{
                            MapPolyline(route.polyline)
                                .stroke(.blue, lineWidth: 6)
                        }
                        
                    }.onAppear(perform: {
                        myChar = UserDefaults.standard.string(forKey: "my_character")
                        myIndex = ["Munaciello", "Federico II","Bella'Mbriana", "Virgilio", "Partenope", "Pulcinella", "Giovanna II",  "Pazzariello","San Gennaro","Posillipo","Sibilla Cumana",  "Colapesce"].firstIndex(of: UserDefaults.standard.string(forKey: "my_character"))
                    })/*.overlay(alignment:.top){
                       TextField("Search for a place...",text: $searchText)
                       .font(.subheadline)
                       .padding(12)
                       .background(.white)
                       .padding()
                       .shadow(radius: 5 )
                       
                       }
                       .onSubmit(of: .text){
                       Task{
                       await searchPlaces()}
                       }*/
                    .onChange(of: getDirections, {oldValue, newValue in
                        if newValue{
                            fetchRoute()
                        }
                    })
                    
                    .onChange(of: mapSelection , { oldValue, newValue in
                        showDetails = newValue != nil
                    })
                    
                    
                    
                    .sheet(isPresented: $showDetails, content:{ LocationDetailView(mapSelection:  $mapSelection, show: $showDetails, getDirections: $getDirections)
                            .presentationDetents([.height(300)])
                            .presentationBackgroundInteraction(.enabled(upThrough: .height(300)))
                            .presentationCornerRadius(12)
                    })
                    .mapControls{
                        
                    }
                    
                    .frame(height:500)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                    .padding()
                    .mapStyle(.standard)
                    /*VStack{
                     Button(){
                     LocationManager.shared.requestLocation()
                     }label:{
                     Text("Allow Location")
                     .padding(.horizontal)
                     .font(.subheadline)
                     .foregroundColor(.gray)
                     }
                     .frame(width:UIScreen.main.bounds.width)
                     .padding(.horizontal, -20)
                     }*/
                }.padding()
                Text("Meglio sulo ca male accumpagnato")
                
                
                    .font(.custom("Herculanum", size: 20))
                
                    .multilineTextAlignment(.leading)
            }
        }
    }
    
    
}

extension MapView{
    func searchPlaces() async{
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        request.region = .userRegion
        
        let results = try? await MKLocalSearch(request: request).start()
        self.results = results?.mapItems ?? []
    }
    func fetchRoute(){
        if let mapSelection{
            let request = MKDirections.Request()
            request.source = MKMapItem(placemark:.init(coordinate:.userLocation))
            request.destination = mapSelection
            Task{
                let result = try? await MKDirections(request: request).calculate()
                route = result?.routes.first
                routeDestination = mapSelection
                
                withAnimation(.snappy){
                    routeDisaplaying = true
                    showDetails = false
                    if let rect = route?.polyline.boundingMapRect, routeDisaplaying{
                        cameraPosition = .rect(rect)
                    }
                }
            }
        }
        
    }
    
}




extension CLLocationCoordinate2D{
    static var userLocation: CLLocationCoordinate2D{
        return .init(latitude: 40.8517746, longitude: 14.2681244)
    }
}

extension MKCoordinateRegion{
    static var userRegion: MKCoordinateRegion{
        return .init(center: .userLocation, latitudinalMeters: 3000, longitudinalMeters: 3000)
    }
}


#Preview {
    MapView()
      }
