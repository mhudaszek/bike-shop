//
//  QuantityDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 17/08/2022.
//

import SwiftUI

struct QuantityDetailView: View {
    enum QuantityType {
        case productDetails
        case basket
    }
    
    @EnvironmentObject var bikesViewModel: BikesViewModel
    var bike: Bike
    var type: QuantityType
    
    var counter: Int {
        switch type {
        case .productDetails:
            return bike.bikeCountToBasket
        case .basket:
            return bike.bikesAddedToBasket
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 1 {
                    switch type {
                    case .productDetails:
                        bikesViewModel.updateBikeCountToBasket(bike: bike, count: counter - 1)
                    case .basket:
                        bikesViewModel.updateCountAddedBikesToBasket(bike: bike, count: counter - 1)
                    }
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    switch type {
                    case .productDetails:
                        bikesViewModel.updateBikeCountToBasket(bike: bike, count: counter + 1)
                    case .basket:
                        bikesViewModel.updateCountAddedBikesToBasket(bike: bike, count: counter + 1)
                    }
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
    }
}

struct QuantityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityDetailView(bike: Bike.all[0], type: .basket)
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(BikesViewModel())
    }
}
