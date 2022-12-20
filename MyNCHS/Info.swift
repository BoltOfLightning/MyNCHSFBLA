//
//  Info.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI
import GoogleSignIn

struct Info: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
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
                    
                    Logos()
                        .padding(10)
                        .background(.black.opacity(0.1))
                        .cornerRadius(10)
                    
                    VStack {
                        LinkText(url: URL(string: "https://northcreek.nsd.org/our-school/weather-emergency-information")!,
                                 width: 250,
                                 text1: "Closures & Delays",
                                 xOffset1: 0,
                                 yOffset1: 0,
                                 color: .white,
                                 color2: .purple.opacity(0.75),
                                 padding: 15)
                        
                        LinkText(url: URL(string: "https://northcreek.nsd.org/our-school/enrollment")!,
                                 width: 250,
                                 text1: "Enrollment",
                                 xOffset1: 0,
                                 yOffset1: 0,
                                 color: .white,
                                 color2: .purple.opacity(0.75),
                                 padding: 15)
                        
                        LinkText(url: URL(string: "https://northcreek.nsd.org/our-school/schedule")!,
                                 width: 250,
                                 text1: "Schedules",
                                 xOffset1: 0,
                                 yOffset1: 0,
                                 color: .white,
                                 color2: .purple.opacity(0.75),
                                 padding: 15)
                        
                        LinkText(url: URL(string: "https://northcreek.nsd.org/our-school/safety-and-security")!,
                                 width: 250,
                                 text1: "Safety and Security",
                                 xOffset1: 0,
                                 yOffset1: 0,
                                 color: .white,
                                 color2: .purple.opacity(0.75),
                                 padding: 15)
                    }
                    
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
