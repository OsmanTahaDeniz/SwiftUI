//
//  DatePickers.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 18.05.2023.
//

import SwiftUI

struct DatePickers: View {
    @State  var datePicker : Date = Date()
    let startingDate: Date = Calendar.current.date(from:DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter:DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack{
            Text("Selected Date is")
            Text(dateFormatter.string(from: datePicker))
            // Text(datePicker.description)
                .font(.title)
            //DatePicker("Select a date", selection: $datePicker)
    //        DatePicker("Select a date",
    //                   selection: $datePicker,
    //                   displayedComponents: [.date,.hourAndMinute]
    //        )
                //.datePickerStyle(.compact)
                //.datePickerStyle(.graphical)
                //.datePickerStyle(.wheel)
                //.foregroundColor(.blue)
            DatePicker("Choose a date", selection: $datePicker, in: startingDate...endingDate,displayedComponents: [.date])
        }
        
        
        
        
        
    }
        
        
}

struct DatePickers_Previews: PreviewProvider {
    static var previews: some View {
        DatePickers()
    }
}
