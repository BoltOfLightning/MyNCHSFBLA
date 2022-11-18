//
//  LinkButton.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/17/22.
//

import SwiftUI

struct LinkButton: View {
    @State private var showWebView = false
    
    var url: URL
    var imageName: String
    var brightness: Double
    var blur: Double
    var text1: String
    var xOffset1: CGFloat
    var yOffset1: CGFloat
    var text2: String
    var xOffset2: CGFloat
    var yOffset2: CGFloat
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 150)
                    .brightness(brightness)
                    .blur(radius: blur)
                    .cornerRadius(10)
                
                VStack {
                    Text(text1)
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .kerning(1.1)
                        .offset(x: xOffset1, y: yOffset1)
                    
                    Text(text2)
                        .foregroundColor(.white)
                        .offset(x: xOffset2, y: yOffset2)
                }
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
