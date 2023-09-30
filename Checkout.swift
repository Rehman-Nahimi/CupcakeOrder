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
        ScrollView{
            VStack{
                AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg"),
                    scale: 3) { image in
                    image
                        .resizable()
                        .scaledToFit()
                    
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 233)
                Text("Your total is \(order.cost, format: .currency(code: "USD"))")
                    .font(.title)
                
                Button("Place Order", action: {})
                    .padding()
            }
        }
        .navigationTitle("Check out")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout(order: Order())
    }
}
