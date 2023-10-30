//
//  CharactersView.swift
//  Neapulse
//
//  Created by Ferdinando Liccardi on 30/10/23.
//

import SwiftUI

struct CharactersView: View {

    @State private var characters = CharacterList().characters
    var body: some View {
        NavigationStack{
            ScrollView{
                
                        HStack{
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[5].caracteristic, charName: $characters[5].name, charImage: $characters[5].image
                                                                             ))
                               
                            {
                                VStack {
                                    Image(characters[5].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[5].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                    
              
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[7].caracteristic, charName: $characters[7].name, charImage: $characters[7].image)){
                                VStack {
                                    Image(characters[7].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[7].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                            
                 
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[0].caracteristic, charName: $characters[0].name, charImage: $characters[0].image)){
                                VStack {
                                    Image(characters[0].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        
                                        
                                    
                                    Text(characters[0].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                            
                        }
                        
                        HStack{
                           
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[6].caracteristic, charName: $characters[6].name, charImage: $characters[6].image)){
                                VStack {
                                    Image(characters[6].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[6].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
           
                            
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[11].caracteristic, charName: $characters[11].name, charImage: $characters[11].image)){
                                VStack {
                                    Image(characters[11].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[11].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                  
                            
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[2].caracteristic, charName: $characters[2].name, charImage: $characters[2].image)){
                                VStack {
                                    Image(characters[2].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[2].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                                
                            
                        }
                        HStack{
                            
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[4].caracteristic, charName: $characters[4].name, charImage: $characters[4].image)){
                                VStack {
                                    Image(characters[4].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[6].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                            
                            
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[8].caracteristic, charName: $characters[8].name, charImage: $characters[8].image)){
                                VStack {
                                    Image(characters[8].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[8].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                        
                          
                            
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[1].caracteristic, charName: $characters[1].name, charImage: $characters[1].image)){
                                VStack {
                                    Image(characters[1].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[1].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                                
                            
                        }
                        HStack{
                           
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[10].caracteristic, charName: $characters[10].name, charImage: $characters[10].image)){
                                VStack {
                                    Image(characters[10].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[10].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                            
                        
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[3].caracteristic, charName: $characters[3].name, charImage: $characters[3].image)){
                                VStack {
                                    Image(characters[3].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[3].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                                
                            
                           
                           
                            NavigationLink (destination: Neapulse.HistoryView(charText: $characters[9].caracteristic, charName: $characters[9].name, charImage: $characters[9].image)){
                                VStack {
                                    Image(characters[9].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[9].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}
                                
                            
                        }
            } .padding()
                    .navigationTitle("Characters")
                    
                }
            }
        }
        
        #Preview {
            CharactersView()
        }
 
