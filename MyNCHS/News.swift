//
//  News.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/24/22.
//

import SwiftUI

struct News: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("News")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.purple)
                        .offset(y: 10)
                    
                    HStack {
                        VStack {
                            Text("School")
                                .font(.title3)
                                .foregroundColor(.black)
                                .offset(x: -2)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .purple)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .purple)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .purple)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .purple)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .purple)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .purple)
                        }
                        .frame(width: 110, height: 500)
                        .background(.purple.opacity(0.3))
                        .cornerRadius(20)
                        
                        VStack {
                            Text("Sports")
                                .font(.title3)
                                .foregroundColor(.black)
                                .offset(x: -3)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .green)

                        }
                        .frame(width: 110, height: 500)
                        .background(.green.opacity(0.3))
                        .cornerRadius(20)
                        
                        VStack {
                            Text("Clubs")
                                .font(.title3)
                                .foregroundColor(.black)
                                .offset(x: -4)
                            
                            LinkText(url: URL(string: "https://resources.finalsite.net/images/v1670862217/nsdorg/qzs121vsnwhsrhsvb5s3/FamilyBulletin16-December112022.pdf")!, width: 100, text1: "Bulletin #11", xOffset1: 0, yOffset1: 0, color: .black, color2: .gray)
            
                        }
                        .frame(width: 110, height: 500)
                        .background(.black.opacity(0.1))
                        .cornerRadius(20)
                    }
                    .offset(y: 20)
                    
                    LinkButton(url: URL(string: "https://forms.gle/TmHbjVf7tS9kubaR6")!,
                               imageName: "NorthCreek3",
                               imageWidth: 340,
                               imageHeight: 150,
                               brightness: -0.3,
                               blur: 2,
                               text1: "Your event is missing?",
                               xOffset1: -10,
                               yOffset1: -28,
                               text2: "Submit the form and we will fix it!",
                               xOffset2: -30,
                               yOffset2: -23,
                               color: .white)
                    .offset(y: 30)
                    
                    Text("More Events")
                        .font(.title)
                        .foregroundColor(.purple)
                        .offset(x: -90, y: 40)
                    
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
                
                }
                .navigationBarHidden(true)
                .padding()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
