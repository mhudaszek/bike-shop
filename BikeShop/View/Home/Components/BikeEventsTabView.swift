//
//  BikeEventsTabView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 26/07/2022.
//

import SwiftUI

struct BikeEventsTabView: View {
    var body: some View {
        TabView {
            ForEach(bikeEvents) { bikeEvent in
                BikeEventsItemView(bikeEvent: bikeEvent)
                    .padding(.top, 10)
                    .padding(.bottom, 50)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onAppear {
            setupAppearance()
        }
    }
    
    private func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
}

struct BikeEventsTabView_Previews: PreviewProvider {
    static var previews: some View {
        BikeEventsTabView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
