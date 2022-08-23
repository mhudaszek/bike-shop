//
//  ProductDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 23/05/2022.
//

import SwiftUI

struct ProductDetailView: View {
    var bike: Bike
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationBarDetailView()
                .padding()
            
            HeaderDetailView(bike: bike)
                .padding(.horizontal)
            
            TopPartDetailView(bike: bike)
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0, content: {
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(bike.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                QuantityFavouriteDetailView(bike: bike)
                    .padding(.vertical, 30)
                
                AddToCartDetailView(bike: bike)
                    .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -250)
            )
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(.gray)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(bike: Bike.all[0])
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
