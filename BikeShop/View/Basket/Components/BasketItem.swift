//
//  BasketItem.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 16/08/2022.
//

import SwiftUI
import CachedAsyncImage

struct BasketItem: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    var bike: Bike
    
    var body: some View {
        HStack {
            HStack(spacing: 15) {
                CachedAsyncImage(url: URL(string: bike.imageURL)) { image in
                    image
                        .image?
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 70, alignment: .center)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(bike.name)
                        .bold()
                    Text("\(bikesViewModel.priceBike(bike: bike))")
                    
                    
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            HStack(spacing: 30) {
                QuantityDetailView(bike: bike, type: .basket)
                
                Image(systemName: "trash")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .onTapGesture {
                        bikesViewModel.removeFromBasket(bike: bike)
                    }
            }
        }
    }
}

struct BasketItem_Previews: PreviewProvider {
    static var previews: some View {
        BasketItem(bike: Bike.all[0])
            .environmentObject(BikesViewModel())
    }
}
