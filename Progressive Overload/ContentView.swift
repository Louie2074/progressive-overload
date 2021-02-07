//
//  ContentView.swift
//  Weight Logger
//
//  Created by Louis Nguyen on 2/5/21.
//

import SwiftUI

struct exercise: Identifiable {
    let id = UUID()
    var name: String
    var set: Int
    var reps: Int
    var weight: Int
    func toString()->String{
        return "\(self.name)"+" Sets: \(self.set)"+" Reps: \(self.reps)"+" Weight: \(self.weight)"
    }
}
struct PushPageView: View {
    var name = String()
    @State private var chest = [exercise]()
    @State private var triceps = []
    @State private var shoulders = []
    @State var username: String = ""
   
    var body: some View {
        
        List {
    
            
            Section(header: Text("Chest"))
            {
                TextField("Enter username...", text: $username)
                            Text("Your username: \(username)")
            
            }
            Section(header: Text("Triceps"))
            {
                Text("test")
            }
            Section(header: Text("Shoulders"))
            {
                Text("test")
            }
        }
        .listStyle(GroupedListStyle()).navigationBarTitle(Text("Push"))
    }

   
          
}


struct ContentView: View {
    // 1.
    @State private var workout = ["Push", "Pull","Legs","Core"]
    
    var body: some View {
        
        NavigationView {
              List {
                NavigationLink(
                    destination: PushPageView() ){
                
                Text("Push")
                    }
                NavigationLink(
                    destination: PushPageView() ){
                
                Text("Pull")
                    }
                NavigationLink(
                    destination: PushPageView() ){
                
                Text("Legs")
                    }
                NavigationLink(
                    destination: PushPageView() ){
                
                Text("Core")
                    }
                 
                   
                  }.navigationBarTitle(Text("Workout Splits"))
              }
              
              // 3.
             
                  
              }
                
            
          }

