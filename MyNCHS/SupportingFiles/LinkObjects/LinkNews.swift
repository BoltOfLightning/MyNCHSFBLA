//
//  LinkNews.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 12/30/22.
//

import SwiftUI

// Used to make the news buttons
// This is an class that can be instanciated to an object that takes paramters
// Exists to use less lines of repetitive code to perform the same task
struct LinkNews: View {
    @State var showWebView = false
    
    var url: URL
    var text1: String
    var text2: String
    var padding: CGFloat
    var text3: String
    var text4: String
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            VStack {
                HStack {
                    HStack {
                        Image(text1)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text(text2)
                                .font(Font.custom("Quicksand-Bold", size: 15))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .offset(x: padding)
                                .padding(.bottom, 3)
                            
                            Text(text3)
                                .font(Font.custom("Quicksand-Medium", size: 10))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .offset(x: 5)
                        }
                        .frame(width: 140, height: 80)
                    }
                    .frame(width: 250, height: 100)
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                    
                    Text(text4)
                        .font(Font.custom("Quicksand-Regular", size: 10))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .offset(x: 5)
                }
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
