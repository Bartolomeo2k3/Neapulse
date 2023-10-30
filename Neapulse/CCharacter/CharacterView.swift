//
//  CharactersView.swift
//  Neapulse
//
//  Created by Ferdinando Liccardi on 30/10/23.
//

import SwiftUI

struct CharactersView: View {
    
    var body: some View {
        NavigationStack{
            ScrollView{
                        HStack{
                            VStack {
                                Image("pulcinella")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Pulcinella")
                                    .fontWeight(.semibold)
                            }
                            HStack{
                                VStack{ Image("pazzariello")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text("Pazzariello")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                            HStack{
                                VStack{ Image("monaciello")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    
                                    Text("Monaciello")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                        }
                        
                        HStack{
                            VStack {
                                Image("giovanna")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Giovanna II")
                                    .fontWeight(.semibold)
                            }
                            HStack{
                                VStack{ Image("colapesce")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text("Colapesce")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                            HStack{
                                VStack{ Image("bellambriana")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    
                                    Text("Bellambriana")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                        }
                        HStack{
                            VStack {
                                Image("partenope")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Partenope")
                                    .fontWeight(.semibold)
                            }
                            HStack{
                                VStack{ Image("sanGennaro")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text("San Gennaro")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                            HStack{
                                VStack{ Image("federico")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    
                                    Text("Federico II")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                        }
                        HStack{
                            VStack {
                                Image("Janara")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Janara")
                                    .fontWeight(.semibold)
                            }
                            HStack{
                                VStack{ Image("virgilio")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text("Virgilio")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                            HStack{
                                VStack{ Image("posillipo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    
                                    Text("Posillipo")
                                        .fontWeight(.semibold)
                                    
                                    
                                }
                                
                            }
                        }
                    }
                    .navigationTitle("Characters")
                    
                }
            }
        }
        
        #Preview {
            CharactersView()
        }
 
