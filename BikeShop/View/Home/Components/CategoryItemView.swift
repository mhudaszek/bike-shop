//
//  CategoryItemView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 26/07/2022.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            shop.selectedCategory = category
            shop.showingProduct = true
        }, label: {
            Text(category.name.uppercased())
                .fontWeight(.light)
                .foregroundColor(.gray)
                .padding()
                .background(Color.white.cornerRadius(12))
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 1)
                )
        })
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
