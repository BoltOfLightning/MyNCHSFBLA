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
            
            News().navigationTitle("x")
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
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
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

