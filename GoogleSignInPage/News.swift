//
//  News.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/24/22.
//

import SwiftUI

struct News: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Hello there")
                
                }
                .navigationBarHidden(true)
                .padding()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
