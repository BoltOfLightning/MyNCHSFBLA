//
//  LinkExploreTab.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 12/30/22.
//

import SwiftUI

struct LinkExploreTab: View {
    @State var showWebView = false
    
    var url: URL
    var text1: String
    var text2: String
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            VStack {
                Image(text1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                
                Text(text2)
                    .font(Font.custom("Quicksand-Bold", size: 10))
                    .foregroundColor(.black)
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}
