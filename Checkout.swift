//
//  Checkout.swift
//  CupcakeOrder
//
//  Created by Ray Nahimi on 30/09/2023.
//

import SwiftUI

struct Checkout: View {
    
    @ObservedObject var order : Order
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout(order: Order())
    }
}
