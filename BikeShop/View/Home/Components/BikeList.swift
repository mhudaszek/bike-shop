//
//  BikeList.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 04/08/2022.
//

import SwiftUI

struct BikeList: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    @State private var showMailSheet = false
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(bikesViewModel.bikes) { bike in
                    BikeItem(bike: bike)
                        .onTapGesture {
                            bikesViewModel.selectedIdBike = bike.id
                            showMailSheet = true
                        }
                }
            }
        }
        .padding(.horizontal)
        .sheet(isPresented: $showMailSheet) {
            ProductDetailView(bike: bikesViewModel.selectedBike())
        }
    }
}

struct BikeList_Previews: PreviewProvider {
    static var previews: some View {
        BikeList()
            .environmentObject(BikesViewModel())
    }
}
