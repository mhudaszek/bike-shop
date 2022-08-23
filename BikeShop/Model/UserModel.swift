//
//  UserModel.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 19/08/2022.
//

import Foundation

struct UserModel: Identifiable {
    let id: Int
    let name: String
    var cards: [CardModel]
}

extension UserModel {
    static let miras = UserModel(id: 1, name: "Miras", cards: CardModel.all)
}
