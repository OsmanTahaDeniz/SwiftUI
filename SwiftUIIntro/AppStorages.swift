//
//  AppStorages.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 15.06.2023.
//

import SwiftUI

struct AppStorages: View {
    
   // @State private var currentUserName: String?
    @AppStorage ("name") private var currentUserName : String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add a name")
            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                let name : String = "James"
                currentUserName = name
                            }
// UIKit -> UserDefaults = SwiftUI -> AppStorage
//            .onAppear{
//                currentUserName = UserDefaults.standard.string(forKey: "name")
//            }
        }
    }
}

struct AppStorages_Previews: PreviewProvider {
    static var previews: some View {
        AppStorages()
    }
}
