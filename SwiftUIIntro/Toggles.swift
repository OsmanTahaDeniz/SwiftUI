//
//  Toggles.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 11.05.2023.
//

import SwiftUI

struct Toggles: View {
    
    @State private var isToggle:Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(isToggle ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(isOn: $isToggle,
                   label: { Text("Change Status")
                    })
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            
            Spacer()
        }
        .padding(.horizontal,100)
    }
}

struct Toggles_Previews: PreviewProvider {
    static var previews: some View {
        Toggles()
    }
}
