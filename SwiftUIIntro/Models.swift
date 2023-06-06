//
//  Models.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 5.06.2023.
//

import SwiftUI

struct UserModel:Identifiable {
    let id: String = UUID().uuidString //random user id
    let displayName : String
    let username:String
    let followerCount:Int
    let isVerified:Bool
}

struct Models: View {
    
    @State private var users: [UserModel] = [
    //["James","Kirk","Lars","Robert"]
        UserModel(displayName: "James", username: "jamesHetfield", followerCount: 1000000, isVerified: true),
        UserModel(displayName: "Kirk", username: "kirkHammett", followerCount: 500000, isVerified: true),
        UserModel(displayName: "Lars", username: "larsUlrich", followerCount: 400000, isVerified: true),
        UserModel(displayName: "Robert", username: "robertTrujillo", followerCount: 350000, isVerified: true),
        UserModel(displayName: "Metallicafan", username: "metallicafan123", followerCount: 51000, isVerified: false)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 30,height: 30)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@"+user.username)
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                    }
                    .padding(.vertical,10)
                }
            }
        }
    }
}

struct Models_Previews: PreviewProvider {
    static var previews: some View {
        Models()
    }
}
