//
//  OrderView.swift
//  Appetizers
//
//  Created by Arkadiusz Plumbaum on 16/08/2023.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("📝 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
