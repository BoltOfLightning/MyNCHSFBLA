//
//  Calender.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Calender: View {
    @State private var date = Date()
    @State private var showPopUp = false
    let dateFormatter = DateFormatter()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("School Calender")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.purple)
                        .offset(y: 10)
                    
                    Image("SchoolCalender")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                    
//                    Image("ActivitiesSchedule")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .edgesIgnoringSafeArea(.all)
                
                    DatePicker(
                            "Start Date",
                            selection: $date,
                            displayedComponents: .date
                        )
                        .datePickerStyle(.graphical)
                    
                    
                    Button("Date") {
                        showPopUp.toggle()
                    }
                    .popover(isPresented: $showPopUp) {
                        Text(date, style: .date)
//                        dateFormatter.dateStyle = .long
//                        if dateFormatter.string(from: date) == "November 28, 2022" {
//                            Text("Why hello there")
//                        }
                    }
                        
                }
                .navigationBarHidden(true)
                .padding()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct Calender_Previews: PreviewProvider {
    static var previews: some View {
        Calender()
    }
}
