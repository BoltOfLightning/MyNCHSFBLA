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
                        
                        ZStack {
                            Link(destination: URL(string: "https://apple.com")!) {
                                Image("NorthCreek8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.3)
                                    .blur(radius: 3)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("Student Info")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -80, y: -30)
                                
                                Text("An easy way to check your student(s) grades, etc.")
                                    .foregroundColor(.white)
                                    .offset(x: -15, y: -25)
                            }
                        }
                        
                        ZStack {
                            Link(destination: URL(string: "https://apple.com")!) {
                                Image("NorthCreek4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.25)
                                    .blur(radius: 2)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("Payments")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -95, y: -40)
                                
                                Text("You will be redirected to Touchbase.")
                                    .foregroundColor(.white)
                                    .offset(x: -23, y: -37)
                            }
                        }
                        
                        ZStack {
                            NavigationLink(destination: Calender()) {
                                Image("NorthCreek7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.2)
                                    .blur(radius: 2)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("Upcoming Events")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -42, y: -37)
                                
                                Text("Go to your calender!")
                                    .foregroundColor(.white)
                                    .offset(x: -82, y: -32)
                            }
                        }
                        
                        ZStack {
                            Link(destination: URL(string: "https://apple.com")!) {
                                Image("NorthCreek5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.2)
                                    .blur(radius: 2)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("Important Links")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -54, y: -34)
                                
                                Text("Links that you should know.")
                                    .foregroundColor(.white)
                                    .offset(x: -53, y: -29)
                            }
                        }
                        
                        ZStack {
                            Link(destination: URL(string: "https://apple.com")!) {
                                Image("NorthCreek2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.2)
                                    .blur(radius: 2)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("Teacher Info")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -75, y: -25)
                                
                                Text("A way to connect easily with your student’s teachers.")
                                    .foregroundColor(.white)
                                    .offset(x: -27, y: -20)
                            }
                        }
                        
                        ZStack {
                            Link(destination: URL(string: "https://apple.com")!) {
                                Image("NorthCreek6")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.2)
                                    .blur(radius: 2)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("School Map")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -79, y: -36)
                                
                                
                                Text("For if you ever get lost in our school.")
                                    .foregroundColor(.white)
                                    .offset(x: -20, y: -31)
                            }
                        }
                        
                        ZStack {
                            Link(destination: URL(string: "https://apple.com")!) {
                                Image("NorthCreek3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 340, height: 150)
                                    .brightness(-0.3)
                                    .blur(radius: 2)
                                    .cornerRadius(10)
                            }
                            
                            VStack {
                                Text("Bug Report")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .kerning(1.1)
                                    .offset(x: -83, y: -28)
                                
                                Text("Encountered a bug or have feedback?")
                                    .foregroundColor(.white)
                                    .offset(x: -15, y: -23)
                                
                                Text("Click here to sumbmit a request.")
                                    .foregroundColor(.white)
                                    .offset(x: -35, y: -20)
                            }
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
