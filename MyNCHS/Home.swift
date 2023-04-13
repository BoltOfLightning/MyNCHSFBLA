//
//  Home.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI
import GoogleSignIn

struct Home: View {
    // Current instance of the user
    private let user = GIDSignIn.sharedInstance.currentUser
    
    private let images = ["1", "2", "3", "4"]
    @State var showWebView = false
    @State var showWebView2 = false
    @State var showWebView3 = false
    @State var showWebView4 = false
    
    var body: some View {
        NavigationView {
            // Page layout
            ScrollView {
                VStack {
                    HStack {
                        Text("Home")
                            .font(Font.custom("Quicksand-Bold", size: 20))
                            .foregroundColor(.white)
                            .padding(15)
                            .background(Color("Color"))
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: 35, y: 20)
                        
                        Spacer()
                        
                        // Profile picture of the user, got from Google
                        NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(30)
                            .offset(x: -35, y: 20)
                    }
                }

                // Profile name of the user, got from Google
                Text("Welcome to the Jungle, " + (user?.profile?.name ?? "") + "")
                    .font(Font.custom("Quicksand-Regular", size: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 35, y: 30)
                
                // All the info drawn on the screen
                VStack {
                    VStack {
                        // Gets the date and displays it
                        VStack {
                            HStack {
                                Image(systemName: "sun.max.fill")
                                    .renderingMode(.original)
                                
                                Text("SUNNY")
                                    .font(Font.custom("Quicksand-Bold", size: 10))
                            }
                            
                            Text(Date.now, format: .dateTime.hour().minute())
                                .font(Font.custom("Quicksand-Bold", size: 60))
                                .foregroundColor(Color("Color"))
                            
                            Text(Date.now, format: .dateTime.day().month().year())
                                .font(Font.custom("Quicksand-Regular", size: 15))
                                .padding(.bottom, 20)
                            
                            Text("Semester 2")
                                .font(Font.custom("Quicksand-Bold", size: 10))
                            
                            Image("Flower1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .offset(x: -155, y: -70)
                            
                            Image("Flower2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120)
                                .offset(x: 140, y: -200)
                        }
                        .offset(y: 120)
                    }
                    .padding()
                    .frame(width: 350, height: 200)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .offset(y: 30)
                    .padding(.bottom, 10)
                    
                    
                    // ExploreTab
                    Explore(padding1: 10, padding2: 5)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 30, y: 30)
                        .padding(.bottom, 5)
                    
                    Text("Suggestions")
                        .font(Font.custom("Quicksand-Bold", size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 40, y: 38)
                    
                    TabView {
                        ForEach(0..<3) { item in
                            if item == 1 {
                                LinkSuggestions(url: URL(string: "https://wa-northshore.intouchreceipting.com/")!,
                                                image: "Suggestions1",
                                                text1: "Make Online Payments",
                                                text2: "Pay on Touchbase →",
                                                color: Color("Color"),
                                                padding1: -50,
                                                padding2: -27)
                                
                                LinkSuggestions(url: URL(string: "https://wa-nor-psv.edupoint.com/PXP2_Login_Parent.aspx?regenerateSessionId=True")!,
                                                image: "Suggestions4",
                                                text1: "Grades and Attendance",
                                                text2: "Go to StudentVUE →",
                                                color: Color("Blue"),
                                                padding1: -55,
                                                padding2: -27)
                                
                                LinkSuggestions(url: URL(string: "https://www.nsd.org/resources/support/virtual-calming-room")!,
                                                image: "Suggestions2",
                                                text1: "Virtual Calming Room",
                                                text2: "Learn More →",
                                                color: Color("Green"),
                                                padding1: -40,
                                                padding2: -27)
                                
                                LinkSuggestions(url: URL(string: "https://www.nsd.org/schools/academics/career-college-readiness")!,
                                                image: "Suggestions3",
                                                text1: "College Readiness",
                                                text2: "Click Here →",
                                                color: Color("Yellow"),
                                                padding1: -33,
                                                padding2: -27)
                            }
                                
                        }
                    }
                    .offset(y: 40)
                    .frame(width: 420, height: 180)
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                            
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
