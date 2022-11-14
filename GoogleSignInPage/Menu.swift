//
//  Menu.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI
import GoogleSignIn

struct Menu: View {
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        TabView {
            Home().navigationTitle("x")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Calender().navigationTitle("x")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calender")
                }
            
            Messages().navigationTitle("x")
                .tabItem {
                    Image(systemName: "message")
                    Text("Messages")
                }
            
            Info().navigationTitle("x")
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
            
            Settings().navigationTitle("x")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Info")
                }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

