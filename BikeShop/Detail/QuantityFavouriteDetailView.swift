//
//  QuantityFavouriteDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 23/05/2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    var bike: Bike
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            QuantityDetailView(bike: bike, type: .productDetails)
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
                bikesViewModel.switchFavouritesState(for: bike)
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(bikesViewModel.isFavourites(bike: bike) ? .pink : .gray)
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView(bike: Bike.all[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(BikesViewModel())
    }
}
