//
//  Calender.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Calender: View {
    @StateObject var myEvents = EventStore(preview: true)
    
    var body: some View {
        EventsCalendarView()
            .environmentObject(myEvents)
    }
}

struct Calender_Previews: PreviewProvider {
    static var previews: some View {
        Calender()
    }
}
