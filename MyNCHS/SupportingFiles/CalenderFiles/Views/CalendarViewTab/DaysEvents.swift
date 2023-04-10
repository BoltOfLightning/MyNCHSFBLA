//
//  DaysEvents.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 12/17/22.
//

import SwiftUI

struct DaysEventsListView: View {
    @EnvironmentObject var eventStore: EventStore
    @Binding var dateSelected: DateComponents?
    @State private var formType: EventFormType?
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                Group {
                    if let dateSelected {
                        let foundEvents = eventStore.events
                            .filter {$0.date.startOfDay == dateSelected.date!.startOfDay}
                        List {
                            ForEach(foundEvents) { event in
                                ListViewRow(event: event, formType: $formType)
                                    .swipeActions {
                                        Button(role: .destructive) {
                                            eventStore.delete(event)
                                        } label: {
                                            Image(systemName: "trash")
                                        }
                                    }
                                    .sheet(item: $formType) { $0 }
                            }
                        }
                    }
                }
                .navigationTitle(dateSelected?.date?.formatted(date: .long, time: .omitted) ?? "")
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct DaysEventsListView_Previews: PreviewProvider {
    static var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: Date())
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }
    
    static var previews: some View {
        DaysEventsListView(dateSelected: .constant(dateComponents))
            .environmentObject(EventStore(preview: true)
            )
    }
}
