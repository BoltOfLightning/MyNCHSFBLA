//
//  LinkInfoTab.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 4/10/23.
//

import SwiftUI

// Used to make the school info buttons
// This is an class that can be instanciated to an object that takes paramters
// Exists to use less lines of repetitive code to perform the same task
struct LinkInfoTab: View {
    @State var showWebView = false
    
    var url: URL
    var text1: String
    var color: Color
    var color2: Color
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            VStack {
                Text(LocalizedStringKey(text1))
                    .foregroundColor(color2)
                    .font(Font.custom("Quicksand-Regular", size: 20))
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(color)
                    .cornerRadius(20)
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
        
    }
}
