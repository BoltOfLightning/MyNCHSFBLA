//
//  LinkText.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/24/22.
//

import SwiftUI

struct LinkText: View {
    @State var showWebView = false
    
    var url: URL
    var width: CGFloat
    var text1: String
    var xOffset1: CGFloat
    var yOffset1: CGFloat
    var color: Color
    var color2: Color
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            Text(text1)
                //.font(.title)
                .foregroundColor(color)
                .fontWeight(.medium)
                .kerning(1.1)
                .frame(width: width, height:.infinity)
                .offset(x: xOffset1, y: yOffset1)
        }
        .background(color2)
        .cornerRadius(10)
        .padding(0.5)
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
