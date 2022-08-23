//
//  BikeItem.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 04/08/2022.
//

import SwiftUI

struct BikeItem: View {
    var bike: Bike
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: bike.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(.white)
                    .padding(.horizontal, 10)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 160)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
        .overlay(alignment: .bottom) {
            Text(bike.name)
                .font(.headline)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 3, x: 0, y: 0)
                .frame(maxWidth: 136)
                .padding()
                .offset(y: 10)
        }
        
    }
}

struct BikeItem_Previews: PreviewProvider {
    static var previews: some View {
        BikeItem(bike: Bike.all[0])
    }
}
