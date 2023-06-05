//
//  ifLetGuard.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 2.06.2023.
//

import SwiftUI

struct ifLetGuard: View {
    @State private var currentUserID: String? = "1907"
    @State private var displayText:String? = ""
    @State private var isLoading:Bool = false
    var body: some View {
        NavigationView {
            VStack{
                Text("Safe coding")
                if let text = displayText {
                    Text(text)
                    .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
//            DO NOT USE !
//           DO NOT FORCE UNWRAP VALUES
//                Text(displayText!)
//                    .font(.title)
                Spacer()
            }
            .onAppear(perform: {
                loadData2()
            }
            )
            .navigationTitle("Safe Coding")
        }
    }
   
    func loadData(){
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "text is displayed , User id is: \(userID)"
                isLoading = false
            })
        }
        else {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1 , execute: {displayText = "Error , There is no User"}
            )
            isLoading = false
        }
        }
    
    func loadData2(){
        guard let userID = currentUserID else {
           displayText = "Error , There is no user !!!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "text is displayed , User id is: \(userID)"
            isLoading = false
        })
        
    }
}

struct ifLetGuard_Previews: PreviewProvider {
    static var previews: some View {
        ifLetGuard()
    }
}
