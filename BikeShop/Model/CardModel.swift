//
//  CardModel.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 19/08/2022.
//

import Foundation

struct CardModel: Identifiable {
    let id: Int
    let number: String
    let balance: Int
    var isSelected: Bool = false
    var formattedBalance: String { return "$\(balance)" }
}

extension CardModel {
    static let all: [CardModel] = [
        .init(id: 1, number: "**** **** **** 3022", balance: 17463),
        .init(id: 2, number: "**** **** **** 1014", balance: 5320, isSelected: true),
        .init(id: 3, number: "**** **** **** 8721", balance: 1300),
        .init(id: 4, number: "**** **** **** 9951", balance: 450)
    ]
}
