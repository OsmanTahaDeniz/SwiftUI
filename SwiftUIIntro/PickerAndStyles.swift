//
//  PickerAndStyles.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 15.05.2023.
//

import SwiftUI

struct PickerAndStyles: View {
    @State var selection:String = "Most Liked"
     let filterOptions:[String] = ["Most Liked","Most Recent","Most Popular"]
    
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
//        let attributes = [NSAttributedString.Key:Any] = [
//            foregroundColor: UIColor.white
//        ]
//        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
                
                                Picker(selection: $selection) {
                                    ForEach(filterOptions, id: \.self) { option in
                                        HStack {
                                        Text(option) }
                                        .tag(option)
                                    }
                                } label: {
                                    HStack {
                                        Text("Filter")
                                        Text(selection)
                                    }
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                }
                                .pickerStyle(.segmented)
                                //.background(Color.red)
        
                            
        }
        
        
//        List {
//                        Picker(selection: $selection) {
//                            ForEach(filterOptions, id: \.self) { option in
//                                HStack {
//                                    Text(option)
//                                    Image(systemName: "gear")
//                                }
//                                .tag(option)
//                            }
//                        } label: {
//                            HStack {
//                                Text("Filter")
//                                Text(selection)
//                            }
//                            .font(.headline)
//                            .foregroundColor(.blue)
//                        }
//                        .pickerStyle(.menu)
//                    }
        
    }


struct PickerAndStyles_Previews: PreviewProvider {
    static var previews: some View {
        PickerAndStyles()
    }
}
