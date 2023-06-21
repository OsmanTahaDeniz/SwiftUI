//
//  ListSwipeActions.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 21.06.2023.
//

import SwiftUI

struct ListSwipeActions: View {
    
    @State private var series: [String] = ["Game of Thrones","The Walking Dead","The Office","Stranger things"]
    
    var body: some View {
        List {
            ForEach(series , id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge:.trailing,allowsFullSwipe: false) {
                        Button("Arhieve"){
                            
                        }
                        .tint(.blue)
                        Button("Delete"){
                            
                        }
                        .tint(.yellow)
                        Button("Junk"){
                            
                        }
                        .tint(.green)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Save"){
                            
                        }
                        .tint(.indigo)
                    }
            }
        // allowFullSwipe = Execute action without click .
            //.onDelete(perform: delete)
        }
    }
    //    func delete(indexset:IndexSet){
    //        series.remove(atOffsets: indexset)
    //    }
    
    struct ListSwipeActions_Previews: PreviewProvider {
        static var previews: some View {
            ListSwipeActions()
        }
    }
    
}
