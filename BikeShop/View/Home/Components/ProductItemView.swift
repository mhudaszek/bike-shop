//
//  ProductItemView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 22/05/2022.
//

import SwiftUI

struct ProductItemView: View {
    let product: Bike
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.imageURL)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Bike.all[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
