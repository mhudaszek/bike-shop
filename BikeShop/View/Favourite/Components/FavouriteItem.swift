//
//  FavouriteItem.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 15/08/2022.
//

import SwiftUI
import CachedAsyncImage

struct FavouriteItem: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    var bike: Bike
    
    var body: some View {
        HStack(spacing: 15) {
            CachedAsyncImage(url: URL(string: bike.imageURL)) { image in
                image
                    .image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 70, alignment: .center)
                
            }
            Text(bike.name)
            Spacer()
            Button(action: {
                bikesViewModel.switchFavouritesState(for: bike)
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(bikesViewModel.isFavourites(bike: bike) ? .pink : .gray)
            })
            .imageScale(.large)
        }
    }
}

struct FavouriteItem_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteItem(bike: Bike.all[0])
    }
}
