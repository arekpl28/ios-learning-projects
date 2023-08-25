//
//  Appetizer.swift
//  Appetizers
//
//  Created by Arkadiusz Plumbaum on 16/08/2023.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 200,
                                           protein: 12,
                                           carbs: 32)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0002,
                                        name: "Test Appetizer1",
                                        description: "This is the description for my appetizer. It's yummy.",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 200,
                                        protein: 12,
                                        carbs: 32)
    
    static let orderItemTwo = Appetizer(id: 0003,
                                        name: "Test Appetizer2",
                                        description: "This is the description for my appetizer. It's yummy.",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 200,
                                        protein: 12,
                                        carbs: 32)
    
    static let orderItemThree = Appetizer(id: 0004,
                                          name: "Test Appetizer3",
                                          description: "This is the description for my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 200,
                                          protein: 12,
                                          carbs: 32)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
