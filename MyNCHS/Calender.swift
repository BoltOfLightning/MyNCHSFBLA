//
//  Calender.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Calender: View {
    // Instanciates EventStore, which has all the events in the calendar
    @StateObject var myEvents = EventStore(preview: true)
    
    var body: some View {
        // Pases all the events into EventsCalendarView, which displays the list onto the screen
        EventsCalendarView()
            .environmentObject(myEvents)
    }
}

struct Calender_Previews: PreviewProvider {
    static var previews: some View {
        Calender()
    }
}
