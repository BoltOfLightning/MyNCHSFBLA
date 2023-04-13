//
//  News.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/24/22.
//

import SwiftUI
import GoogleSignIn

struct News: View {
    // Current instance of the user
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        NavigationView {
            // Displays news info
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
                        
                        // Gets user's profile image from google
                        NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(30)
                            .offset(x: -4.5, y: 4.5)
                    }

                    // Gtes user's profile name from google
                    Text("Your Newsletters, " + (user?.profile?.name ?? "") + "")
                        .font(Font.custom("Quicksand-Regular", size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 4, y: 15)
                    
                    // Main news
                    LinkNews(url: URL(string: "https://www.parentsquare.com/schools/18569/feeds")!,
                             text1: "News1",
                             text2: "ParentSquare\nBulletin #29",
                             padding: -15,
                             text3: "April",
                             text4: "Monthly\nNewsletter")
                        .offset(x: -5, y: 10)
                    
                    LinkNews(url: URL(string: "https://arbiterlive.com/Teams?entityId=45371")!,
                             text1: "News2",
                             text2: "Track & Field\nTournament\nDates",
                             padding: -18,
                             text3: "April",
                             text4: "Sports")
                        .offset(x: -14, y: 10)
                    
                    LinkNews(url: URL(string: "https://storage.googleapis.com/pt04-2/messages/attachments/a3ef0a481ca39637f51e3a728895153d/Family_Bulletin_15_-_December_4%252C_2022.pdf")!,
                             text1: "News3",
                             text2: "ParentSquare\nBulletin #28",
                             padding: -15,
                             text3: "April",
                             text4: "Monthly\nNewsletter")
                        .offset(x: -5, y: 10)
                    
                    // ExploreTab
                    Explore(padding1: -22, padding2: 0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 30, y: 15)
                        .padding(.bottom, 5)
                    
                    // Social media links
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

// Explore Tab inside of news and the home page
struct Explore: View {
    var padding1: CGFloat
    var padding2: CGFloat
    
    var body: some View {
        VStack {
            Text("Explore")
                .font(Font.custom("Quicksand-Bold", size: 15))
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: padding1)
            
            HStack {
                LinkExploreTab(url: URL(string: "https://www.parentsquare.com/signin")!,
                               text1: "Explore2",
                               text2: "Newsletters",
                               padding1: padding2)
                               
                LinkExploreTab(url: URL(string: "https://northcreek.nsd.org/our-school/school-news")!,
                               text1: "Explore3",
                               text2: "Events",
                               padding1: padding2)
                
                LinkExploreTab(url: URL(string: "https://arbiterlive.com/School/Calendar/45371")!,
                               text1: "Explore1",
                               text2: "Sports",
                               padding1: padding2)
                
                LinkExploreTab(url: URL(string: "https://northcreek.nsd.org/activities/clubs")!,
                               text1: "Explore4",
                               text2: "Clubs",
                               padding1: padding2)
            }
            .offset(x: -40)
        }
    }
}
