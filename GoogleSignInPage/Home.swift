//
//  Home.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI
import GoogleSignIn

struct Home: View {
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    VStack {
                        Text("MyNCHS")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.purple)
                            .offset(y: 10)
                        
                        Text("Welcome " + (user?.profile?.name ?? "") + "!")
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                            .padding(.bottom, 50)
                            .offset(y: 10)
                        
                        ZStack {
                            Image("NorthCreek1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 340, height: 200)
                                .brightness(-0.2)
                                .blur(radius: 2)
                                .cornerRadius(10)
                                
                            VStack {
                                Text("Newsletter")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .kerning(1.1)
                                    .offset(x: -90, y: -15)
                                
                                Text("Catch up on the latest North Creek news")
                                    .foregroundColor(.white)
                                    .offset(x: -8, y: -11)
                                
                                Link(destination: URL(string: "https://apple.com")!) {
                                    Text("Jaguar Family Bulletin #10")
                                }
                                .foregroundColor(.white)
                                
                                Link(destination: URL(string: "https://apple.com")!) {
                                    Text("Jaguar Family Bulletin #9")
                                }
                                .foregroundColor(.white)
                                
                                Link(destination: URL(string: "https://apple.com")!) {
                                    Text("Jaguar Family Bulletin #8")
                                }
                                .foregroundColor(.white)
                                
                                Link(destination: URL(string: "https://apple.com")!) {
                                    Text("Jaguar Family Bulletin #7")
                                }
                                .foregroundColor(.white)
                                
                                Link(destination: URL(string: "https://apple.com")!) {
                                    Text("See more newsletters here")
                                }
                                .foregroundColor(.white)
                            }
                        }
                        
                        VStack {
                            LinkButton(url: URL(string: "https://grades.nsd.org")!,
                                       imageName: "NorthCreek8",
                                       brightness: -0.3,
                                       blur: 3,
                                       text1: "Student Info",
                                       xOffset1: -80,
                                       yOffset1: -30,
                                       text2: "An easy way to check your student(s) grades, etc.",
                                       xOffset2: -15,
                                       yOffset2: -25)
                            
                            LinkButton(url: URL(string: "https://wa-northshore.intouchreceipting.com")!,
                                       imageName: "NorthCreek4",
                                       brightness: -0.25,
                                       blur: 2,
                                       text1: "Payments",
                                       xOffset1: -95,
                                       yOffset1: -40,
                                       text2: "You will be redirected to Touchbase.",
                                       xOffset2: -23,
                                       yOffset2: -37)
                            
                            LinkButton(url: URL(string: "https://northcreek.nsd.org/our-school/calendar")!,
                                       imageName: "NorthCreek7",
                                       brightness: -0.25,
                                       blur: 2,
                                       text1: "Upcoming Events",
                                       xOffset1: -42,
                                       yOffset1: -37,
                                       text2: "Go to your calender!",
                                       xOffset2: -82,
                                       yOffset2: -32)
                            
                            LinkButton(url: URL(string: "https://northcreek.nsd.org/")!,
                                       imageName: "NorthCreek5",
                                       brightness: -0.2,
                                       blur: 2,
                                       text1: "Important Links",
                                       xOffset1: -54,
                                       yOffset1: -34,
                                       text2: "Links that you should know.",
                                       xOffset2: -53,
                                       yOffset2: -29)
                        }
                        
                        VStack {
                            LinkButton(url: URL(string: "https://northcreek.nsd.org/our-school/school-directory")!,
                                       imageName: "NorthCreek2",
                                       brightness: -0.2,
                                       blur: 2,
                                       text1: "Teacher Info",
                                       xOffset1: -75,
                                       yOffset1: -25,
                                       text2: "A way to connect easily with your student’s teachers.",
                                       xOffset2: -27,
                                       yOffset2: -20)
                            
                            LinkButton(url: URL(string: "https://northcreek.nsd.org/our-school/parking-transportation")!,
                                       imageName: "NorthCreek6",
                                       brightness: -0.2,
                                       blur: 2,
                                       text1: "School Map",
                                       xOffset1: -79,
                                       yOffset1: -36,
                                       text2: "For if you ever get lost in our school.",
                                       xOffset2: -20,
                                       yOffset2: -31)
                            
                            LinkButton(url: URL(string: "https://forms.gle/ZhQr55f7DxnM4HVr9")!,
                                       imageName: "NorthCreek3",
                                       brightness: -0.3,
                                       blur: 2,
                                       text1: "Bug Report",
                                       xOffset1: -83,
                                       yOffset1: -28,
                                       text2: "Encountered a bug or have feedback?",
                                       xOffset2: -15,
                                       yOffset2: -23)
                        }
                    }
                    .navigationBarHidden(true)
                    .padding()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
