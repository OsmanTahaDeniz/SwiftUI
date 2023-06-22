//
//  Badges.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 22.06.2023.
//

import SwiftUI

struct Badges: View {
    var body: some View {
        // List
        // TabView
            List{
                Text("Badge")
                    .badge("%90 Done")
                Text("Navigation Stack")
                    .badge("%40 Done")
                Text("Picker")
                    .badge("%30 Done")
                Text("Spacer")
                    .badge("Completed")
                Text("Toggle")
                    .badge("Not Started")
            }
            .font(.headline)

//        TabView{
//            Color.yellow
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Like")
//                }
//                .badge(10)
//            Color.red
//                .tabItem {
//                    Image(systemName: "message")
//                    Text("Comment")
//                }
//                .badge(100)
//            Color.green
//                .tabItem {
//                    Image(systemName: "gear")
//                    Text("Settings")
//                }
//                .badge(2)
//
//        }
        
    }
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
    }
}
