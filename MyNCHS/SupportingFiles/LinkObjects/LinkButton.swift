//
//  LinkButton.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/17/22.
//

import SwiftUI

struct LinkButton: View {
    @State var showWebView = false
    
    var url: URL
    var imageName: String
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    var brightness: Double
    var blur: Double
    var text1: String
    var xOffset1: CGFloat
    var yOffset1: CGFloat
    var text2: String
    var xOffset2: CGFloat
    var yOffset2: CGFloat
    var color: Color
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            ZStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: imageWidth, height: imageHeight)
                    .brightness(brightness)
                    .blur(radius: blur)
                    .cornerRadius(10)
                
                VStack {
                    Text(text1)
                        .font(.title)
                        .foregroundColor(color)
                        .fontWeight(.medium)
                        .kerning(1.1)
                        .offset(x: xOffset1, y: yOffset1)
                    
                    Text(text2)
                        .foregroundColor(color)
                        .offset(x: xOffset2, y: yOffset2)
                }
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
