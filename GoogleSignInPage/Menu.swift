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
                }.tag(0)
            
            News().navigationTitle("x")
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }.tag(1)
            
            Calender().navigationTitle("x")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calender")
                }.tag(2)
            
            Messages().navigationTitle("x")
                .tabItem {
                    Image(systemName: "message")
                    Text("Messages")
                }.tag(3)
            
            Info().navigationTitle("x")
                .tabItem {
                    NetworkImage(url: user?.profile?.imageURL(withDimension: 20))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(20)
                    Text("Info")
                }.tag(4)
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

