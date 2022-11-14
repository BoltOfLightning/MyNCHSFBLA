//
//  Messages.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Messages: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("MyNCHSBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
                    .offset(x: -21.44)
                
                ScrollView {
                    VStack {
                        
                    
                    }
                    .navigationBarHidden(true)
                    .padding()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}

