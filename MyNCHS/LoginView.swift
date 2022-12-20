//
//  LoginView.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 7/1/22.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel

    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.purple, .white]),
//                           startPoint: .top,
//                           endPoint: .bottom)
//                .edgesIgnoringSafeArea(.all)
            
            Image("MyNCHSBackground")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500, height: 950)
                .edgesIgnoringSafeArea(.all)
                
            
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .offset(y: 220)

                Text("MyNCHS")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .offset(y: 220)
                
                Text("Together we rise.")
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top, -5)
                    .offset(y: 220)
                
                Button {
                    viewModel.signIn()
                } label: {
                    HStack {
                        Image("Google Logo")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        
                        Text("Google Sign in")
                            .font(.title3)
                            .fontWeight(.medium)
                            .kerning(1.1)
                    }
                    .foregroundColor(.purple)
                    .padding()
                    .frame(width: 250)
                    .background(
                        Capsule()
                            .strokeBorder(.purple)
                    )
                }
                .offset(y: 300)
                
                Spacer()
                
                Text("Made lovingly by Sai, Bryan, and Rithin")
                    .font(.body.bold())
                    .foregroundColor(.gray)
                    .kerning(1.1)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
