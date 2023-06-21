//
//  ListEdit.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 9.05.2023.
//

import SwiftUI

struct ListEdit: View {
    
    @State var fruits: [String] = ["apple","banana","strawberry","watermelon","orange"]
    
    @State var vegetables: [String] = ["potato","tomato","brocolli"]
    
    var body: some View {
        NavigationView {
            List{
                Section(header: HStack {
                    Text("Fruits").font(.title)
                    Image(systemName: "apple.logo")
                }.font(.title)
                ) {
                    ForEach(fruits,id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .foregroundColor(.white)
                            .font(.callout)
                            .padding(.vertical)
                                    
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.yellow)
                    }
                Section(header:Text("Vegetables").font(.headline)) {
                    ForEach(vegetables,id: \.self) { vegetable in
                        Text(vegetable.capitalized)
                    }
                }
            }
            .tint(Color.red)
            .listStyle(GroupedListStyle())
            
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItemGroup (placement:.navigationBarLeading) {
                    EditButton()
                }
                ToolbarItemGroup(placement:.navigationBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.red)
    }
    var addButton:some View {
        Button("Add") {
            add()
        }
    }
                                
    func delete(indexSet:IndexSet) {
        fruits.remove(atOffsets: indexSet)
      }
    func move(indices:IndexSet , newOffset:Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Berry")
    }
    }



struct ListEdit_Previews: PreviewProvider {
    static var previews: some View {
        ListEdit()
    }
}

