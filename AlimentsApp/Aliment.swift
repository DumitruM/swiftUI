//
//  Aliment.swift
//  AlimentsApp
//
//  Created by mihai.dumitru on 01/04/2021.
//

import Foundation
import UIKit
import SwiftUI

struct Aliment: Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var alimentType: AlimentType
    var proteins: Int
    var glucids: Int
    var lipids: Int
}

struct AlimentType {
    var color: Color
    var imageName: String
}

let fruit = AlimentType(color: Color(red: 0.965, green: 0.761, blue: 0.275), imageName: "fruits")
let vegetable = AlimentType(color: Color(red: 0.718, green: 0.165, blue: 0.263), imageName: "vegetables")

let aliments = [
    Aliment(id: 0, name: "Apple", imageName: "apple", alimentType: fruit, proteins: 35, glucids: 60, lipids: 215),
    Aliment(id: 1, name: "Banana", imageName: "banana", alimentType: fruit, proteins: 40, glucids: 80, lipids: 400),
    Aliment(id: 2, name: "Carrot", imageName: "carrot", alimentType: vegetable, proteins: 13, glucids: 150, lipids: 450),
    Aliment(id: 3, name: "Watermelon", imageName: "watermelon", alimentType: fruit, proteins: 57, glucids: 123, lipids: 215),
    Aliment(id: 4, name: "Potato", imageName: "potato", alimentType: vegetable, proteins: 78, glucids: 346, lipids: 987),
    Aliment(id: 5, name: "Tomato", imageName: "tomato", alimentType: vegetable, proteins: 12, glucids: 98, lipids: 456),
]

