//
//  FoodView.swift
//  PropertyWrappers
//
//  Created by Caroline Davis on 22/9/2023.
//

// Example of @State, @FocusState, TextInput, List, Button, Delete item on list, Add item on list

import SwiftUI

struct FoodView: View {
    @State private var food: String = ""
    @State private var allFoods: [FoodItem] = []
    @FocusState private var isTextFieldFocused: Bool

    func addFoods() {
          if !food.isEmpty {
              let newFood = FoodItem(name: food)
              allFoods.append(newFood)
              food = ""
          }
      }

    func removeFoods(at offsets: IndexSet) {
        allFoods.remove(atOffsets: offsets)
    }


    var body: some View {
        VStack {
            List {
                HStack{
                    TextField("Type here...", text: $food)
                        .accentColor(.yellow)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .focused($isTextFieldFocused)
                        .onAppear {
                          isTextFieldFocused = true
                         }
                        .onSubmit {
                            addFoods()
                            isTextFieldFocused = true
                        }
                    Button(action: {
                        addFoods()
                        isTextFieldFocused = true
                    }) {
                        Text("Enter")
                            .padding(7)
                            .background(.black)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                Section {
                    ForEach(allFoods, id: \.self) { foodItem in
                        HStack {
                            Text(foodItem.name)
                            Spacer()
                            Button(action: {
                                if let index = allFoods.firstIndex(where: { $0.id == foodItem.id }) {
                                    allFoods.remove(at: index)
                                }
                            }){
                                Image(systemName: "trash.circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.red)
                            }
                        }

                    }
                    .onDelete(perform: removeFoods)
                }
            }
            .padding(.top, 10)
            .listStyle(.plain)
        }
        .navigationTitle("Party foods")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orange)
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
