//
//  HomeView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 04/08/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    BikeEventsTabView()
                        .frame(height: UIScreen.main.bounds.width / 1.475)
                        .padding(.vertical, 20)
                    
                    TitleView(title: "Bikes")
                    BikeList()
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("Bike Shop")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
