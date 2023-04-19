//
//  Info.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI
import GoogleSignIn

// Displays the info page
struct Info: View {
    // Authenticates the user to enter the app
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    // Current instace of the user on the app
    private let user = GIDSignIn.sharedInstance.currentUser
    
    // Allows external links to pop up in the app
    @State var showWebView = false
    @State var showWebView2 = false
    @State var showWebView3 = false
    
    // Allows app to send notifications
    let notify = NotificationHandler()
    
    var body: some View {
        NavigationView {
            // Displays info page onto the screen when clicked on the menu
            ScrollView {
                VStack {
                    Text("Info")
                        .font(Font.custom("Quicksand-Bold", size: 20))
                        .foregroundColor(.white)
                        .padding(15)
                        .background(Color("Color"))
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 20, y: 20)
                    
                    VStack {
                        VStack {
                            HStack {
                                // Collects user profile image from Google Sign In
                                NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                                
                                VStack {
                                    // Collects user profile name from Google Sign In
                                    Text("" + (user?.profile?.name ?? "") + "")
                                        .font(Font.custom("Quicksand-Bold", size: 25))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    // Collects user profile email from Google Sign In
                                    Text("" + (user?.profile?.email ?? "") + "")
                                        .font(Font.custom("Quicksand-Regular", size: 15))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                            }
                        }
                        .offset(x: 25, y: 10)
                        
                        // When presses, it will sign out the user and will go back to the login page
                        Button(action: viewModel.signOut) {
                            Text("SIGN OUT")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color("Color"))
                                .cornerRadius(20)
                                .padding()
                        }
                    }
                    .padding()
                    .frame(width: 360, height: 175)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .offset(y: 30)
                    .padding(.bottom, 10)
                    
                    // Asks user for permission to send notifications for the calendar
                    Button {
                        notify.askPermission()
                    } label: {
                        Text(LocalizedStringKey("Notification Permissions"))
                            .foregroundColor(.white)
                            .font(Font.custom("Quicksand-Regular", size: 20))
                            .padding()
                            .frame(width: 355, height: 50)
                            .background(Color("Color"))
                            .cornerRadius(20)
                            .offset(y: 23)
                    }
                }
                
                // Row of buttons with school information
                VStack {
                    LinkInfoTab(url: URL(string: "https://northcreek.nsd.org/our-school/weather-emergency-information")!,
                                text1: "Closures & Delays",
                                color: .white,
                                color2: Color("Color"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Color"), lineWidth: 5)
                    )
                    .padding(.trailing, 15)
                    
                    LinkInfoTab(url: URL(string: "https://northcreek.nsd.org/our-school/enrollment")!,
                                text1: "Enrollment",
                                color: Color("Color"),
                                color2: .white)
                    .padding(.trailing, 15)
                    
                    LinkInfoTab(url: URL(string: "https://northcreek.nsd.org/our-school/schedule")!,
                                text1: "Schedule",
                                color: .white,
                                color2: Color("Color"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Color"), lineWidth: 5)
                    )
                    .padding(.trailing, 15)
                    
                    LinkInfoTab(url: URL(string: "https://northcreek.nsd.org/our-school/safety-and-security")!,
                                text1: "Safety & Security",
                                color: Color("Color"),
                                color2: .white)
                    .padding(.trailing, 15)
                }
                .offset(x: 5, y: 23)
                
                // Social media links
                Logos()
                    .frame(width: 330, height: 150)
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                    .offset(y: 30)
                
                // Bug Report
                Button {
                    showWebView.toggle()
                } label: {
                    VStack {
                        Text("Feedback or Report Bugs Here!")
                            .font(Font.custom("Quicksand-Bold", size: 30))
                            .foregroundColor(Color("Color"))
                            .multilineTextAlignment(.center)
                        
                    }
                    .frame(width: 350, height: 100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Color"), lineWidth: 5)
                    )
                }
                .sheet(isPresented: $showWebView) {
                    WebView(url: URL(string: "https://forms.gle/BSK75wedtFHCZpFi7")!)
                }
                .offset(y: 40)
                
                Image("HorizontalLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .frame(width: 350, height: 225)
                    .offset(y: 20)
                
                HStack {
                    Button {
                        showWebView2.toggle()
                    } label: {
                        VStack {
                            Text(LocalizedStringKey("Work Cited"))
                                .foregroundColor(.white)
                                .font(Font.custom("Quicksand-Regular", size: 15))
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color("Color"))
                                .cornerRadius(20)
                        }
                    }
                    .sheet(isPresented: $showWebView2) {
                        WebView(url: URL(string: "https://docs.google.com/document/d/1g8Oh0PrIpdjN9C6eT8H6-ci4KRpU0skzXFcHfyjMTR4/edit?usp=sharing")!)
                    }
                    
                    Button {
                        showWebView3.toggle()
                    } label: {
                        VStack {
                            Text(LocalizedStringKey("Source Code"))
                                .foregroundColor(.white)
                                .font(Font.custom("Quicksand-Regular", size: 15))
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color("Color"))
                                .cornerRadius(20)
                        }
                    }
                    .sheet(isPresented: $showWebView3) {
                        WebView(url: URL(string: "https://github.com/BoltOfLightning/MyNCHSFBLA")!)
                    }
                }
                
                Text("Version 2.5")
                    .font(Font.custom("Quicksand-Bold", size: 20))
                    .padding()
                    
            }
            
            
        }
        .navigationViewStyle(.stack)
    }
    
}

// Gets the profile image from the user
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

// Social media links code
struct Logos: View {
    var body: some View {
        VStack {
            Text("Follow Us")
                .font(Font.custom("Quicksand-Bold", size: 15))
                .offset(y: -10)
            
            HStack {
                // Instagram button
                LinkButton(url: URL(string: "https://www.instagram.com/northcreekasb/?hl=en")!,
                           imageName: "Instagram",
                           imageWidth: 75,
                           imageHeight: 75,
                           brightness: 0,
                           blur: 0,
                           text1: "",
                           xOffset1: 0,
                           yOffset1: -30,
                           text2: "Instagram",
                           xOffset2: 0,
                           yOffset2: 40,
                           color: .black)
                
                // Twitter Button
                LinkButton(url: URL(string: "https://twitter.com/northcreekhs")!,
                           imageName: "Twitter",
                           imageWidth: 75,
                           imageHeight: 75,
                           brightness: 0,
                           blur: 0,
                           text1: "",
                           xOffset1: 0,
                           yOffset1: -30,
                           text2: "Twitter",
                           xOffset2: 0,
                           yOffset2: 40,
                           color: .black)
                
                // Facebook button
                LinkButton(url: URL(string: "https://m.facebook.com/people/North-Creek-High-School/100068372418596/")!,
                           imageName: "Facebook",
                           imageWidth: 75,
                           imageHeight: 75,
                           brightness: 0,
                           blur: 0,
                           text1: "",
                           xOffset1: 0,
                           yOffset1: -30,
                           text2: "Facebook",
                           xOffset2: 0,
                           yOffset2: 40,
                           color: .black)
                
                // Youtube button
                LinkButton(url: URL(string: "https://www.youtube.com/@northcreekhighschoolasb7186")!,
                           imageName: "Youtube",
                           imageWidth: 75,
                           imageHeight: 75,
                           brightness: 0,
                           blur: 0,
                           text1: "",
                           xOffset1: 0,
                           yOffset1: -30,
                           text2: "Youtube",
                           xOffset2: 0,
                           yOffset2: 40,
                           color: .black)
            }
            .offset(y: -10)
        }
    }
}
