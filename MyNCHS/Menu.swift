//
//  Menu.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI

// This will always keep a look out for user actions like pressing on the menu
struct Menu: View {
    // What button on the menu the user pressed on
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            // When clicked on this button, it will go to the home page
            Home().navigationTitle("x")
                .tabItem {
                    if selection == 0 {
                        Image(systemName: "house.fill")
                    } else {
                        Image(systemName: "house")
                    }
                }.tag(0)

            // When clicked on this button, it will go to the news page
            News().navigationTitle("x")
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "newspaper.fill")
                    } else {
                        Image(systemName: "newspaper")
                    }
                }.tag(1)

            // When clicked on this button, it will go to the calendar
            Calender().navigationTitle("x")
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "calendar")
                    } else {
                        Image(systemName: "calendar")
                    }
                }.tag(2)

            // When clicked, it will launch gmail directly from the app
            Messages().navigationTitle("x")
                .tabItem {
                    if selection == 3 {
                        Image(systemName: "envelope.open.fill")
                    } else {
                        Image(systemName: "envelope")
                    }
                }.tag(3)

            // When clicked on this button, it will go to the info page
            Info().navigationTitle("x")
                .tabItem {
                    if selection == 4 {
                        Image(systemName: "info.circle.fill")
                    } else {
                        Image(systemName: "info.circle")
                    }
                }.tag(4)
        }
        //.tabViewStyle(PageTabViewStyle())
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
