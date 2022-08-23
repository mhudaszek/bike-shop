//
//  FavoritesView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 14/08/2022.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    
    var body: some View {
        NavigationView {
            if bikesViewModel.favouritesBikes.isEmpty {
                VStack(alignment: .center) {
                    Image("bikePlaceholder")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 130, alignment: .center)
                    
                    Text("You haven't saved any recipe to your favorites yet.")
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .navigationTitle("Favorites")
            } else {
                FavouritesList()
                    .navigationTitle("Favorites")
                    .padding()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .environmentObject(BikesViewModel())
    }
}
