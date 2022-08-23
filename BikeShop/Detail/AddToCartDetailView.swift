//
//  AddToCartDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 23/05/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    var bike: Bike
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
            bikesViewModel.addToBasket(bike: bike)
        }, label: {
            Spacer()
            Text("Add to basket".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(.black)
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(bike: Bike.all[0])
            .environmentObject(BikesViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
