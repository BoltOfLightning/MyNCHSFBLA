//
//  EventsCalendarView.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 12/17/22.
//

import SwiftUI
import GoogleSignIn

// Displays the calender with all the data from the events
struct EventsCalendarView: View {
    @EnvironmentObject var eventStore: EventStore
    @State private var dateSelected: DateComponents?
    @State private var displayEvents = false
    @State private var formType: EventFormType?
    
    @State var showWebView = false
    @State var showWebView2 = false
    
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        if #available(iOS 16.0, *) {
            // Displays the calendar
            NavigationStack {
                ScrollView {
                    VStack {
                        HStack {
                            Text("Calendar")
                                .font(Font.custom("Quicksand-Bold", size: 20))
                                .foregroundColor(.white)
                                .padding(15)
                                .background(Color("Color"))
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .offset(x: 20, y: 20)
                            
                            Spacer()
                            
                            // Allows access to add new events
                            Button {
                                formType = .new
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .imageScale(.large)
                            }
                            .offset(x: -150, y: 22)
                            
                            Spacer()
                            
                            // Profile image of the user from Google Sign In
                            NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50, alignment: .center)
                                .cornerRadius(30)
                                .offset(x: -20, y: 20)
                        }
                    }
                    
                    // Profile name of the user from Google Sign In
                    Text("Your Calendar, \(user?.profile?.name ?? "")")
                        .font(Font.custom("Quicksand-Regular", size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 20, y: 30)
                        .padding(.bottom, 25)
                    
                    // Runs CalendarView which has events
                    CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture),
                                 eventStore: eventStore,
                                 dateSelected: $dateSelected,
                                 displayEvents: $displayEvents)
                    
                    // Button stack for school and sports schedules for more information
                    HStack {
                        // School Calendar
                        Button {
                            showWebView.toggle()
                        } label: {
                            VStack {
                                Text(LocalizedStringKey("School Schedule"))
                                    .foregroundColor(.white)
                                    .font(Font.custom("Quicksand-Regular", size: 15))
                                    .padding()
                                    .frame(width: 150, height: 50)
                                    .background(Color("Color"))
                                    .cornerRadius(20)
                            }
                        }
                        .sheet(isPresented: $showWebView) {
                            WebView(url: URL(string: "https://www.parentsquare.com/schools/18569/feeds")!)
                        }
                        
                        // Sports Calendar
                        Button {
                            showWebView2.toggle()
                        } label: {
                            VStack {
                                Text(LocalizedStringKey("Sports Schedule"))
                                    .foregroundColor(.white)
                                    .font(Font.custom("Quicksand-Regular", size: 15))
                                    .padding()
                                    .frame(width: 150, height: 50)
                                    .background(Color("Color"))
                                    .cornerRadius(20)
                            }
                        }
                        .sheet(isPresented: $showWebView2) {
                            WebView(url: URL(string: "https://arbiterlive.com/Teams?entityId=45371")!)
                        }
                    }
                }
                .sheet(item: $formType) { $0 }
                .sheet(isPresented: $displayEvents) {
                    DaysEventsListView(dateSelected: $dateSelected)
                        .presentationDetents([.medium, .large])
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct EventsCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        EventsCalendarView()
            .environmentObject(EventStore(preview: true))
    }
}
