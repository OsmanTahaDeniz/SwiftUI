//
//  TabViews.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 24.05.2023.
//

import SwiftUI

struct TabViews: View {

    @State private var selectedTab:Int = 1
    @State private var icons : [String] = ["heart.fill","gear","person.fill"]
    var body: some View {
        TabView{
            ForEach(icons , id:\.self){
                icon in  Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.blue,Color.yellow]), center: .center, startRadius: 5, endRadius: 400)
        )

        .tabViewStyle(.page)
        .frame(height: 300)
//        TabView(selection:$selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("User")
//                }
//                .tag(2)
//        }
//        .tint(Color.green)
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}

struct HomeView: View {
    @Binding var selectedTab:Int
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            VStack{
                Text("Home Tab")
                    .foregroundColor(.white)
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .foregroundColor(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }


            }
        }
        
    }
}
