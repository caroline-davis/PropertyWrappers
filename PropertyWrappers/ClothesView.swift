//
//  ClothesView.swift
//  PropertyWrappers
//
//  Created by Caroline Davis on 22/9/2023.
//

import SwiftUI

struct ClothesView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .navigationTitle("Clothes ideas")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

struct ClothesView_Previews: PreviewProvider {
    static var previews: some View {
        ClothesView()
    }
}
