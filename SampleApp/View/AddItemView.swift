//
//  AddItemView.swift
//  SampleApp
//
//  Created by Aleksandra Łepkowska on 28/05/2023.
//

import SwiftUI

struct AddItemView: View {
    // MARK: - PROPERTIES
    
    @State private var name: String = ""
    @State private var category: String = "Kids"
    @State private var deliveryType: String = "Pickup only"
    
    let categories = ["Clothes", "Kids", "Home", "Garder",  "Car Parts", "Other"]
    let deliveryTypes = ["Pickup only", "Shipping only", "Pickup & shipping"]
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Form {
                // MARK: - ITEM NAME
                TextField("Item name", text: $name)
        
                
                //MARK: - ITEM CATEGORY
                Picker("Category", selection: $category){
                    ForEach(categories, id: \.self) {
                        Text($0)
                    }
                }//: ITEM CATEGORY
                
                Spacer()
                
                //MARK: - DELIVERY TYPE
                Picker("Delivery", selection: $deliveryType){
                    ForEach(deliveryTypes, id: \.self) {
                        Text($0)
                    }
                }//: DELIVERY TYPE
                .pickerStyle(SegmentedPickerStyle())
            } //: FORM
            
            Spacer()
        } //: VSTACK
        .navigationBarTitle("Add free item", displayMode: .inline)
    } //: NAVIGATION
}

    // MARK: - PREVIEW
struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
