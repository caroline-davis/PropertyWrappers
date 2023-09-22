//
//  FoodModel.swift
//  PropertyWrappers
//
//  Created by Caroline Davis on 22/9/2023.
//

import Foundation

public struct FoodItem: Identifiable, Hashable {
    public var id = UUID()
    public var name: String
}
