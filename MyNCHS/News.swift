//
//  News.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/24/22.
//

import SwiftUI
import GoogleSignIn

struct News: View {
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("News")
                            .font(Font.custom("Quicksand-Bold", size: 20))
                            .foregroundColor(.white)
                            .padding(15)
                            .background(Color("Color"))
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: 4.5, y: 4.5)
                        
                        Spacer()
                        
                        NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(30)
                            .offset(x: -4.5, y: 4.5)
                    }

                    Text("YOUR NEWSLETTERS, " + (user?.profile?.name ?? "") + "")
                        .font(Font.custom("Quicksand-Regular", size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 4, y: 15)
                    
                    // Main news
                    LinkNews(url: URL(string: "https://storage.googleapis.com/pt04-2/messages/attachments/f190f12f04adb6bb85fe8ba1d2f2c0a5/Family_Bulletin_16_-_December_11%252C_2022.pdf")!,
                             text1: "News1",
                             text2: "Jaguar Family\nBulletin #16",
                             padding: -12,
                             text3: "December",
                             text4: "Monthly\nNewsletter")
                        .offset(x: -5, y: 10)
                    
                    LinkNews(url: URL(string: "https://arbiterlive.com/Teams?entityId=45371")!,
                             text1: "News2",
                             text2: "Basketball\nTournament\nDates",
                             padding: -18,
                             text3: "November",
                             text4: "Sports")
                        .offset(x: -14, y: 10)
                    
                    LinkNews(url: URL(string: "https://storage.googleapis.com/pt04-2/messages/attachments/a3ef0a481ca39637f51e3a728895153d/Family_Bulletin_15_-_December_4%252C_2022.pdf")!,
                             text1: "News3",
                             text2: "Jaguar Family\nBulletin #15",
                             padding: -12,
                             text3: "November",
                             text4: "Monthly\nNewsletter")
                        .offset(x: -5, y: 10)
                    
                    // ExploreTab
                    VStack {
                        Text("Explore")
                            .font(Font.custom("Quicksand-Bold", size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: -5)
                        
                        HStack {
                            LinkExploreTab(url: URL(string: "https://arbiterlive.com/Teams?entityId=45371")!,
                                           text1: "Explore1",
                                           text2: "Sports")
                            
                            LinkExploreTab(url: URL(string: "https://northcreek.nsd.org/our-school/bulletins")!,
                                           text1: "Explore2",
                                           text2: "Newsletters")
                            
                            LinkExploreTab(url: URL(string: "https://northcreek.nsd.org/our-school/school-news")!,
                                           text1: "Explore3",
                                           text2: "Events")
                            
                            LinkExploreTab(url: URL(string: "https://northcreek.nsd.org/activities/clubs")!,
                                           text1: "Explore4",
                                           text2: "Clubs")
                        }
                        .offset(x: -25)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20, y: 15)
                    .padding(.bottom, 5)
                    
                    
                    Logos()
                        .frame(width: 330, height: 150)
                        .padding()
                        .background(.gray.opacity(0.1))
                        .cornerRadius(10)
                        .offset(y: 20)
                    
                    Text("")
                        .padding(.bottom, 10)
                    
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
