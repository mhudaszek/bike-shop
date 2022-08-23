//
//  BasketList.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 16/08/2022.
//

import SwiftUI

struct BasketList: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    
    private var basketList: [Bike] {
        let uniqueIds = Array(Set(bikesViewModel.basket.map({ $0.id })))
        var temporaryList = [Bike]()
        bikesViewModel.basket.forEach { bike in
            if uniqueIds.contains(where: { $0 == bike.id }), !temporaryList.contains(where: { $0.id == bike.id }) {
                temporaryList.append(bike)
            }
        }
        return temporaryList
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(basketList) { item in
                    BasketItem(bike: item)
                }
            }
        }
    }
}

struct BasketList_Previews: PreviewProvider {
    static var previews: some View {
        BasketList()
            .environmentObject(BikesViewModel())
    }
}
