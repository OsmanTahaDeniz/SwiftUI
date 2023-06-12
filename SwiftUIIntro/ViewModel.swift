//
//  ViewModel.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 6.06.2023.
//

import SwiftUI

struct FruitModel:Identifiable {
    let id:String = UUID().uuidString
    let name:String
    let count:Int
}

class FruitViewModel : ObservableObject {
    //published tells the class something is changed
    @Published  var fruitArray: [FruitModel] = []
    @Published  var isLoading:Bool = false
    
    init(){
      getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 3)
        let fruit2 = FruitModel(name:"Berry", count:6)
        let fruit3 = FruitModel(name: "Banana", count: 1)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
                
       
    }
    
    func deleteFruit(index:IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
}

struct ViewModel: View {
    /*If view is reloading ObservedObject will reload too but StateObject won't reload when view is reloading.
     StateObject for init / creation
     ObservedObject for subviews */
    @StateObject private var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                
                if fruitViewModel.isLoading{
                    ProgressView()
                }
                else{
                    ForEach(fruitViewModel.fruitArray){
                        fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text(fruit.name)
                        }
                    }
                    
                    .onDelete (perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle(Text("Fruits"))
            .toolbar {
                ToolbarItem (placement:.navigationBarTrailing){
                    NavigationLink(
                        destination: secondPage(fruitViewModel: fruitViewModel) ,
                        label: {
                        Image(systemName: "arrow.right")
                                .font(.title)
                    })
                }
            }
        }
    }
}
    
    struct secondPage: View {
        
        @Environment(\.presentationMode) var presentatitonMode
        @ObservedObject var fruitViewModel:FruitViewModel
        
        var body: some View {
            ZStack{
                Color.yellow.ignoresSafeArea()
                
                VStack{
                    ForEach(fruitViewModel.fruitArray){
                        fruit in Text(fruit.name)
                    }
                }

            }
        }
    }



struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
        //secondPage()
    }
}
