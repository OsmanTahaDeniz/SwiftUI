//
//  Documentation.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 29.05.2023.
//

import SwiftUI

struct Documentation: View {
    
    // MARK: PROPERTIES
    
    @State private var data: [String] = [
        "apple","samsung","sony"
    ]
    @State private var showAlert:Bool = false
    
    
    // MARK: BODY
    
    /*Option + Command + Left => Fold the code
    //or
    Editor -> Code Folding -> Fold
     */
    /* Fix Code
     Fix Alert
     Add Button
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                //foreground
               foregroundLayer
                    
                } // END: SCROLLV
                .navigationTitle("Documentation")
                .toolbar{
                    ToolbarItem(placement:.navigationBarTrailing){
                        Button("Alert", action: {
                               showAlert.toggle()
                             
                               })
                        .alert(isPresented: $showAlert) {
                            getAlert(text:"Error",message: "Something went wrong")
                        }
                    }
                    
                    
            }
            }
        } //END: NAV
       ///this is the foreground layer that holds a scrollview
        private var foregroundLayer:some View {
            ScrollView{ // START: SCROLLV
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                ForEach(data , id:\.self){
                    brand in Text(brand)
                        .font(.headline)
                }
        }
        
    }
    // MARK: FUNCTIONS
    /// Gets and alert with specified title.
    ///
    /// This functions creates and returns alert immediately.The alert have a title and message based on the thext parameter but it will NOT have a message.
    /// ```
    /// getAlert(text:"Hi",message:"Hello there") -> Alert(title: Text("Hi") ,message("Hello there"))
    ///```
    ///
    ///  Warning:You have to fill title and message fields.
    /// - Parameters:
    /// - text: This is the title for alert
    /// - message: This is the message for alert
    /// - Returns: Returns and alert with text and message
    func getAlert(text:String,message:String) -> Alert {
        return Alert(title: Text(text),message: Text(message))
    }
}

struct Documentation_Previews: PreviewProvider {
    static var previews: some View {
        Documentation()
    }
}
