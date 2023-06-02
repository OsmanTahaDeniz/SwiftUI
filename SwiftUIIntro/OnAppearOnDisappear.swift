//
//  OnAppearOnDisappear.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 2.06.2023.
//

import SwiftUI

struct OnAppearOnDisappear: View {
    @State private var myText : String = "Starting Text"
    @State private var count : Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform:{
                DispatchQueue.main.asyncAfter(deadline:.now() + 3)  {
                    myText = "This is the new text"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("OnAppear \(count)")
        }
    }
}

struct OnAppearOnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearOnDisappear()
    }
}
