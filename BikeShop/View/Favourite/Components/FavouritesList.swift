//
//  FavouritesList.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 15/08/2022.
//

import SwiftUI

struct FavouritesList: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(bikesViewModel.favouritesBikes) { bike in
                    FavouriteItem(bike: bike)
                }
            }
        }
    }
}

struct FavouritesList_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesList()
            .environmentObject(BikesViewModel())
    }
}
