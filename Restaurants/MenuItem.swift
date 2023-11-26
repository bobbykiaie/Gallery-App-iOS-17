//
//  MenuItem.swift
//  Menu App
//
//  Created by Babak Kiaie on 11/19/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    
    var name: String
    var price: String
    var imageName: String
}

var firstItem = MenuItem(name: "Onigiri", price: "$1.99", imageName: "onigiri")

var secondItem = MenuItem(name: "Meguro Sushi", price: "$4.99", imageName: "meguro-sushi")
