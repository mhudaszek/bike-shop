//
//  Category.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 21/05/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
}
