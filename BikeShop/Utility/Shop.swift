//
//  Shop.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 26/07/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Bike?
    @Published var selectedCategory: Category?
}
