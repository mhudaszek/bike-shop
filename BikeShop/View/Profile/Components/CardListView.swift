//
//  CardListView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 18/08/2022.
//

import SwiftUI

struct CardListView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(userViewModel.mirasUser.cards) { card in
                    CardView(card: card)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                        .onTapGesture {
                            userViewModel.changeCardSelection(cardId: card.id)
                        }
                }
            }
            .padding(20)
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(UserViewModel())
    }
}
