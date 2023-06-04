
//  ContentView.swift
//  SampleApp
//
//  Created by Aleksandra Łepkowska on 14/05/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var showingAddTodoView: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("Hello, world!")
            } //: LIST
            .navigationBarTitle("Free stuff")
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar){
                    Button(action: {
                        self.showingAddTodoView.toggle()
                    }) {
                        Image(systemName: "plus.circle")
                    }//: ADD BUTTON)
                    .sheet(isPresented: $showingAddTodoView){
                        AddItemView()
                    }
                }
            }
            }//: NAVIGATION
            .padding()
        }
    }
// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
