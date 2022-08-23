//
//  UserViewModel.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 19/08/2022.
//

import Foundation
import SwiftUI

class UserViewModel: ObservableObject {
    @Published var mirasUser = UserModel.miras
    
    func changeCardSelection(cardId: Int) {
        guard let index = mirasUser.cards.firstIndex(where: { $0.id == cardId }) else { return }
        for (index, _) in mirasUser.cards.enumerated() {
            mirasUser.cards[index].isSelected = false
        }
        mirasUser.cards[index].isSelected.toggle()
    }
}
