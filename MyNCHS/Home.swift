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
                            .offset(x: 20, y: 20)
                        
                        Spacer()
                        
                        // Profile picture of the user, got from Google
                        NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(30)
                            .offset(x: -20, y: 20)
                    }
                }

                // Profile name of the user, got from Google
                Text("Welcome to the Jungle, " + (user?.profile?.name ?? "") + "")
                    .font(Font.custom("Quicksand-Regular", size: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20, y: 30)
                
                // All the info drawn on the screen
                VStack {
                    HStack {
                        VStack {
                            HStack {
                                Image(systemName: "sun.max.fill")
                                    .renderingMode(.original)

                                Text("SUNNY")
                                    .font(Font.custom("Quicksand-Bold", size: 10))
                            }
                            .offset(y: 60)

                            // Gets the date and displays it
                            Text(Date.now, format: .dateTime.hour().minute())
                                .font(Font.custom("Quicksand-Medium", size: 35))
                                .offset(y: 60)

                            Text(Date.now, format: .dateTime.day().month().year())
                                .font(Font.custom("Quicksand-Regular", size: 15))
                                .padding(.bottom, 20)
                                .offset(y: 60)

                            Text("Semester 2")
                                .font(Font.custom("Quicksand-Bold", size: 10))
                                .offset(y: 60)

                            Image("Flower1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .offset(x: -75, y: -20)
                        }
                        .frame(width: 170, height: 170)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Color"), lineWidth: 5)
                        )
                        .padding(.trailing, 5)

                        VStack {
                            Text("“It always seems impossible until it's done”")
                                .font(Font.custom("Quicksand-Medium", size: 17))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 5)

                            Text("NELSON MANDELA")
                                .font(Font.custom("Quicksand-Regular", size: 10))
                                .frame(alignment: .center)
                        }
                        .frame(width: 170, height: 170)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Color"), lineWidth: 5)
                        )
                    }
                    .padding(.bottom, 5)

                    // Newsletters
                    HStack {
                        Button {
                            showWebView.toggle()
                        } label: {
                            VStack {
                                Text("NEWSLETTERS")
                                    .font(Font.custom("Quicksand-Bold", size: 22))
                                    .foregroundColor(Color("Color"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 8, y: 56.5)

                                Text("Jaguar Family Bulletin")
                                    .font(Font.custom("Quicksand-Medium", size: 12))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 10, y: 60)

                                Text("December")
                                    .font(Font.custom("Quicksand-Regular", size: 8))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 10, y: 60)
                                    .padding(.bottom, 3)

                                Text("Jaguar Family Bulletin")
                                    .font(Font.custom("Quicksand-Medium", size: 12))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 10, y: 60)

                                Text("November")
                                    .font(Font.custom("Quicksand-Regular", size: 8))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 10, y: 60)
                                    .padding(.bottom, 3)

                                Text("Jaguar Family Bulletin")
                                    .font(Font.custom("Quicksand-Medium", size: 12))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 10, y: 60)

                                Text("October")
                                    .font(Font.custom("Quicksand-Regular", size: 8))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .offset(x: 10, y: 60)
                                    .padding(.bottom, 3)

                                Image("Flower2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120, height: 120)
                                    .offset(x: 70, y: -30)

                            }
                            .frame(width: 170, height: 170)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color("Color"), lineWidth: 5)
                            )
                            .padding(.trailing, 5)
                        }
                        .sheet(isPresented: $showWebView) {
                            WebView(url: URL(string: "https://northcreek.nsd.org/our-school/school-news")!)
                        }

                        // Student Info
                        VStack {
                            Text("STUDENT INFO")
                                .font(Font.custom("Quicksand-Bold", size: 22))
                                .foregroundColor(Color("Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .offset(x: 7, y: 1.7)

                            HStack {
                                Button {
                                    showWebView2.toggle()
                                } label: {
                                    VStack {
                                        Text("Grades")
                                            .font(Font.custom("Quicksand-Medium", size: 12))
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)

                                        Image("ParentVue")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            .cornerRadius(20)

                                    }
                                    .frame(width: 60, height: 100)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("Color"), lineWidth: 5)
                                    )
                                    .padding(.trailing, 5)
                                }
                                .sheet(isPresented: $showWebView2) {
                                    WebView(url: URL(string: "https://wa-nor-psv.edupoint.com/PXP2_Login_Parent.aspx?regenerateSessionId=True")!)
                                }

                                Button {
                                    showWebView3.toggle()
                                } label: {
                                    VStack {
                                        Text("Payment")
                                            .font(Font.custom("Quicksand-Medium", size: 12))
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .offset(y: 1)

                                        Image("NorthshoreLogo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            .cornerRadius(20)
                                    }
                                    .frame(width: 60, height: 100)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("Color"), lineWidth: 5)
                                    )
                                    .padding(.trailing, 5)
                                }
                                .sheet(isPresented: $showWebView3) {
                                    WebView(url: URL(string: "https://wa-northshore.intouchreceipting.com/")!)
                                }
                            }

                        }
                        .frame(width: 170, height: 170)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Color"), lineWidth: 5)
                        )
                    }
                    .padding(.bottom, 5)

                    // Teacher Info
                    HStack {
                        VStack {
                            Text("TEACHER INFO")
                                .font(Font.custom("Quicksand-Bold", size: 22))
                                .foregroundColor(Color("Color"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .offset(x: 7, y: 44.7)

                            Text("Alphabetical order")
                                .font(Font.custom("Quicksand-Medium", size: 12))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .offset(y: 44.7)

                            Image("Flower3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .offset(x: -70, y: 70)

                            Button {
                                showWebView4.toggle()
                            } label: {
                                VStack {
                                    Text("Poonam Ahuja")
                                        .font(Font.custom("Quicksand-Medium", size: 12))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .center)

                                    Text("Ima Akpaidem")
                                        .font(Font.custom("Quicksand-Medium", size: 12))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .center)

                                    Text("Maasoma Alajami")
                                        .font(Font.custom("Quicksand-Medium", size: 12))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .center)

                                    Text("Carlos Aldrete")
                                        .font(Font.custom("Quicksand-Medium", size: 12))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .center)

                                    Text("Lisa Allen")
                                        .font(Font.custom("Quicksand-Medium", size: 12))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .center)

                                }
                                .frame(width: 110, height: 60)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("gray"), lineWidth: 10)
                                )
                                .padding()
                                .background(.gray.opacity(0.1))
                                .cornerRadius(10)
                                .shadow(radius: 10)
                                .padding(.trailing, 5)
                                .offset(y: -44.7)
                            }
                            .sheet(isPresented: $showWebView4) {
                                WebView(url: URL(string: "https://northcreek.nsd.org/our-school/school-directory")!)
                            }

                        }
                        .frame(width: 170, height: 170)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Color"), lineWidth: 5)
                        )
                        .padding(.trailing, 5)

                        Image("HomePageBeach")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                    }
                }
                .offset(y: 40)
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
