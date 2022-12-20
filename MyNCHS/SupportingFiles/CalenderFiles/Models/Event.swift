import SwiftUI

struct Event: Identifiable {
    enum EventType: String, Identifiable, CaseIterable {
        case school, home, social, sport, unspecified
        var id: String {
            self.rawValue
        }

        var icon: String {
            switch self {
            case .school:
                return "📚"
            case .home:
                return "🏠"
            case .social:
                return "🎉"
            case .sport:
                return "🏏"
            case .unspecified:
                return "📌"
            }
        }
    }

    var eventType: EventType
    var date: Date
    var note: String
    var id: String
    //let dateFormatter = DateFormatter()
    //dateFormatter.dateFormat = "dd/MM/yyyy"
    
    var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: date)
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }

    init(id: String = UUID().uuidString, eventType: EventType = .unspecified, date: Date, note: String) {
        self.eventType = eventType
        self.date = date
        self.note = note
        self.id = id
    }

    // Data to be used in the preview
    static var sampleEvents: [Event] {
        return [
            //Event(eventType: .home, date: dateFormatter.date(from: "12/16/2022")!, note: "Winter break starts"),
            Event(eventType: .home, date: Date().diff(numDays: -3), note: "Winter break starts"),
            Event(eventType: .home, date: Date().diff(numDays: -1), note: "Winter break ends"),
            Event(eventType: .school, date: Date().diff(numDays: 6), note: "Early release wednesday"),
            Event(eventType: .social, date: Date().diff(numDays: 2), note: "North Creek champions chapter"),
            Event(eventType: .school, date: Date().diff(numDays: -1), note: "Early release wednesday"),
            Event(eventType: .unspecified, date: Date().diff(numDays: -3), note: "MLK day"),
            Event(eventType: .school, date: Date().diff(numDays: -4), note: "Early release wednesday"),
            Event(eventType: .school, date: Date().diff(numDays: -3), note: "Early release wednesday"),
            Event(eventType: .school, date: Date().diff(numDays: -4), note: "End of the semester"),
            Event(eventType: .unspecified, date: Date().diff(numDays: -4), note: "Grading day")
            //Event(eventType: .sport, date: Date().diff(numDays: -4), note: "Boys and girls basketball"),
        ]
    }
}
