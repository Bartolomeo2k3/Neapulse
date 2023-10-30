//
//  CharactersView.swift
//  Neapulse
//
//  Created by Ferdinando Liccardi on 30/10/23.
//

import SwiftUI

struct CharactersView: View {
    @State private var showingPopover0 = false
    @State private var showingPopover1 = false
    @State private var showingPopover2 = false
    @State private var showingPopover3 = false
    @State private var showingPopover4 = false
    @State private var showingPopover5 = false
    @State private var showingPopover6 = false
    @State private var showingPopover7 = false
    @State private var showingPopover8 = false
    @State private var showingPopover9 = false
    @State private var showingPopover10 = false
    @State private var showingPopover11 = false
    var characters = CharacterList().characters
    var body: some View {
        NavigationStack{
            ScrollView{
                        HStack{
                            Button{
                                showingPopover0 = true
                            }label:{
                                VStack {
                                    Image(characters[0].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[0].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover0) {
                                    ScrollView{
                                        Image(characters[0].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[0].name).fontWeight(.semibold)
                                        Text(characters[0].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover0=false}
                                }
                    
                            Button{
                                showingPopover1 = true
                            }label:{
                                VStack {
                                    Image(characters[1].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[1].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover1) {
                                    ScrollView{
                                        Image(characters[1].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[1].name).fontWeight(.semibold)
                                        Text(characters[1].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover1=false}
                                }
                                
                            
                 
                            Button{
                                showingPopover2 = true
                            }label:{
                                VStack {
                                    Image(characters[2].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[2].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover2) {
                                    ScrollView{
                                        Image(characters[2].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[2].name).fontWeight(.semibold)
                                        Text(characters[2].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover2=false}
                                }
                                
                            
                        }
                        
                        HStack{
                            Button{
                                showingPopover3 = true
                            }label:{
                                VStack {
                                    Image(characters[3].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[3].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover3) {
                                    ScrollView{
                                        Image(characters[3].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[3].name).fontWeight(.semibold)
                                        Text(characters[3].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover3=false}
                                }
           
                            Button{
                                showingPopover4 = true
                            }label:{
                                VStack {
                                    Image(characters[4].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[4].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover4) {
                                    ScrollView{
                                        Image(characters[4].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[4].name).fontWeight(.semibold)
                                        Text(characters[4].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover4=false}
                                }
                  
                            Button{
                                showingPopover5 = true
                            }label:{
                                VStack {
                                    Image(characters[5].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[5].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover5) {
                                    ScrollView{
                                        Image(characters[5].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[5].name).fontWeight(.semibold)
                                        Text(characters[5].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover5=false}
                                }
                                
                            
                        }
                        HStack{
                            Button{
                                showingPopover6 = true
                            }label:{
                                VStack {
                                    Image(characters[6].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[6].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover6) {
                                    ScrollView{
                                        Image(characters[6].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[6].name).fontWeight(.semibold)
                                        Text(characters[6].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover6=false}
                                }
                            
                            Button{
                                showingPopover7 = true
                            }label:{
                                VStack {
                                    Image(characters[7].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[7].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover7) {
                                    ScrollView{
                                        Image(characters[7].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[7].name).fontWeight(.semibold)
                                        Text(characters[7].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover7=false}
                                }
                        
                          
                            Button{
                                showingPopover8 = true
                            }label:{
                                VStack {
                                    Image(characters[8].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[8].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover8) {
                                    ScrollView{
                                        Image(characters[8].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[8].name).fontWeight(.semibold)
                                        Text(characters[8].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover8=false}
                                }
                                
                            
                        }
                        HStack{
                            Button{
                                showingPopover9 = true
                            }label:{
                                VStack {
                                    Image(characters[9].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[9].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover9) {
                                    ScrollView{
                                        Image(characters[9].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[9].name).fontWeight(.semibold)
                                        Text(characters[9].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover9=false}
                                }
                            
                            Button{
                                showingPopover10 = true
                            }label:{
                                VStack {
                                    Image(characters[10].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[10].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover10) {
                                    ScrollView{
                                        Image(characters[10].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[10].name).fontWeight(.semibold)
                                        Text(characters[10].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover10=false}
                                }
                                
                            
                           
                            Button{
                                showingPopover11 = true
                            }label:{
                                VStack {
                                    Image(characters[11].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    
                                    Text(characters[11].name)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                }}.popover(isPresented: $showingPopover11) {
                                    ScrollView{
                                        Image(characters[11].image).resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Text(characters[11].name).fontWeight(.semibold)
                                        Text(characters[11].caracteristic).padding(40).foregroundColor(.gray)}
                                    Button("close"){showingPopover11=false}
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
 
