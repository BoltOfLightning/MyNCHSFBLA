//
//  LinkSuggestions.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 4/13/23.
//

import SwiftUI

// Used to make the suggestions tab on the home page buttons
// This is an class that can be instanciated to an object that takes paramters
// Exists to use less lines of repetitive code to perform the same task
struct LinkSuggestions: View {
    @State var showWebView = false
    
    var url: URL
    var image: String
    var text1: String
    var text2: String
    var color: Color
    var padding1: CGFloat
    var padding2: CGFloat
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            VStack {
                HStack {
                    HStack {
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 140, height: 140)
                            .cornerRadius(20)
                        
                        Spacer()
                        
                        VStack {
                            Text(text1)
                                .font(Font.custom("Quicksand-Bold", size: 15))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .offset(x: padding1)
                                .padding(.bottom, 3)
                            
                            Text(text2)
                                .font(Font.custom("Quicksand-Medium", size: 10))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .offset(x: padding2)
                        }
                        .frame(width: 140, height: 80)
                    }
                    .frame(width: 330, height: 150)
                    .padding()
                    .background(color)
                    .cornerRadius(20)
                }
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
