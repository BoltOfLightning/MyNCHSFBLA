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
