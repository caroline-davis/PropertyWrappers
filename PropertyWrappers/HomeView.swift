//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Caroline Davis on 22/9/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
                List {
                    Section {
                        NavigationLink(destination: FoodView()) {
                            Text("Food")
                        }
                        NavigationLink(destination: ClothesView()) {
                            Text("Clothes")
                        }
                        .listRowSeparatorTint(.pink)
                    }
                    .foregroundColor(.black)
                    .bold()
                }
                .padding(.top, 10)
                .scrollContentBackground(.hidden)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .background(.pink)
                .navigationTitle("Birthday List")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
