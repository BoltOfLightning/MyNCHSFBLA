//
//  Info.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI

struct Info: View {
    var body: some View {
        NavigationView {
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
        .navigationViewStyle(.stack)
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
