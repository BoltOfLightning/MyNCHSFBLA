//
//  LinkExploreTab.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 12/30/22.
//

import SwiftUI

// Used to make the explore tab buttons
// This is an class that can be instanciated to an object that takes paramters
// Exists to use less lines of repetitive code to perform the same task
struct LinkExploreTab: View {
    @State var showWebView = false
    
    var url: URL
    var text1: String
    var text2: String
    var padding1: CGFloat
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            VStack {
                Image(text1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .offset(x: padding1)
                
                Text(text2)
                    .font(Font.custom("Quicksand-Bold", size: 10))
                    .foregroundColor(.black)
                    .offset(x: padding1)
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
