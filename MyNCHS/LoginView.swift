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
                .edgesIgnoringSafeArea(.all)
                .offset(x: -21.44)
            
            VStack {
                Image("NCHS")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .offset(y: 120)

                Text("MyNCHS")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .offset(y: 120)
                
                Text("Together we rise.")
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top, -5)
                    .offset(y: 120)
                    
//                GoogleSignInButton()
//                    .padding()
//                    .clipShape(Capsule())
//                    .onTapGesture {
//                        viewModel.signIn()
//                    }
//                    .offset(y: 200)
                
                Button {
                    viewModel.signIn()
                } label: {
                    HStack {
                        Image("Google Logo")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        
                        Text("Create Account")
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
                .offset(y: 200)
                
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
