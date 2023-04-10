//
//  EventsCalendarView.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 12/17/22.
//

import SwiftUI
import GoogleSignIn

struct EventsCalendarView: View {
    @EnvironmentObject var eventStore: EventStore
    @State private var dateSelected: DateComponents?
    @State private var displayEvents = false
    @State private var formType: EventFormType?
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        if #available(iOS 16.0, *) {
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
                            
                            Button {
                                formType = .new
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .imageScale(.large)
                            }
                            .offset(x: -150, y: 22)
                            
                            Spacer()
                            
                            NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50, alignment: .center)
                                .cornerRadius(30)
                                .offset(x: -20, y: 20)
                        }
                    }

                    Text("YOUR CALENDAR, " + (user?.profile?.name ?? "") + "")
                        .font(Font.custom("Quicksand-Regular", size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 20, y: 30)
                        .padding(.bottom, 25)
                    
                    CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture),
                                 eventStore: eventStore,
                                 dateSelected: $dateSelected,
                                 displayEvents: $displayEvents)
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
