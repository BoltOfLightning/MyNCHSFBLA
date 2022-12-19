//
//  Info.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI
import GoogleSignIn

struct Info: View {
    // 1
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    // 2
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Info")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.purple)
                        .offset(y: 10)
                        .padding(.bottom, 20)
                    
                    HStack {
                        // 3
                        NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(8)
              
                        VStack(alignment: .leading) {
                            Text(user?.profile?.name ?? "")
                                .font(.headline)
                
                            Text(user?.profile?.email ?? "")
                                .font(.subheadline)
                        }
              
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                    .padding()
                    
                    Text("Follow us on all of the social media accounts!")
                        .font(.title)
                        .fontWeight(.light)
                        .kerning(1.1)
                    
                    HStack {
                        LinkButton(url: URL(string: "https://forms.gle/ZhQr55f7DxnM4HVr9")!,
                                   imageName: "InstagramLogo",
                                   imageWidth: 100,
                                   imageHeight: 100,
                                   brightness: 0,
                                   blur: 0,
                                   text1: "",
                                   xOffset1: 0,
                                   yOffset1: -30,
                                   text2: "",
                                   xOffset2: -15,
                                   yOffset2: -23,
                                   color: .black)
                        
                        LinkButton(url: URL(string: "https://forms.gle/ZhQr55f7DxnM4HVr9")!,
                                   imageName: "TwitterLogo",
                                   imageWidth: 100,
                                   imageHeight: 100,
                                   brightness: 0,
                                   blur: 0,
                                   text1: "",
                                   xOffset1: 0,
                                   yOffset1: -30,
                                   text2: "",
                                   xOffset2: -15,
                                   yOffset2: -23,
                                   color: .black)
                        
                        LinkButton(url: URL(string: "https://forms.gle/ZhQr55f7DxnM4HVr9")!,
                                   imageName: "FacebookLogo",
                                   imageWidth: 100,
                                   imageHeight: 100,
                                   brightness: 0,
                                   blur: 0,
                                   text1: "",
                                   xOffset1: 0,
                                   yOffset1: -30,
                                   text2: "",
                                   xOffset2: -15,
                                   yOffset2: -23,
                                   color: .black)
                    }
                    .offset(x: -10, y: 30)
                    .padding(30)
                    .background(.black.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.bottom, 50)
                    
                    LinkText(url: URL(string: "https://northcreek.nsd.org")!,
                             width: 250,
                             text1: "Our Website",
                             xOffset1: 0,
                             yOffset1: 0,
                             color: .white,
                             color2: .purple)
                    
                    LinkText(url: URL(string: "https://northcreek.nsd.org")!,
                             width: 250,
                             text1: "Mission Statement",
                             xOffset1: 0,
                             yOffset1: 0,
                             color: .white,
                             color2: .purple)
                    
                    LinkText(url: URL(string: "https://northcreek.nsd.org")!,
                             width: 250,
                             text1: "Vision Statement",
                             xOffset1: 0,
                             yOffset1: 0,
                             color: .white,
                             color2: .purple)
                    
                    // 4
                    Button(action: viewModel.signOut) {
                        Text("Sign out")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(.systemIndigo))
                            .cornerRadius(12)
                            .padding()
                    }
                    
                    Text("Version Number 1.0")
                    
                    LinkButton(url: URL(string: "https://forms.gle/ZhQr55f7DxnM4HVr9")!,
                               imageName: "NorthCreek3",
                               imageWidth: 340,
                               imageHeight: 150,
                               brightness: -0.3,
                               blur: 2,
                               text1: "Bug Report",
                               xOffset1: -83,
                               yOffset1: -28,
                               text2: "Encountered a bug or have feedback?",
                               xOffset2: -15,
                               yOffset2: -23,
                               color: .white)
                }
                .navigationBarHidden(true)
                .padding()
            }
            .navigationTitle("MyNCHS")
        }
        .navigationViewStyle(.stack)
    }
}

struct NetworkImage: View {
    let url: URL?
    
    var body: some View {
        if let url = url,
           let data = try? Data(contentsOf: url),
           let uiImage = UIImage(data: data) {
            
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
