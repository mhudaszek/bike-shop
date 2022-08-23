//
//  BikeEventsItemView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 21/05/2022.
//


import SwiftUI

struct BikeEventsItemView: View {
    let bikeEvent: BikeEvent
    
    var body: some View {
        VStack {
            Image(bikeEvent.image)
                .resizable()
                .scaledToFit()
        }
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct BikeEventsItemView_Previews: PreviewProvider {
    static var previews: some View {
        BikeEventsItemView(bikeEvent: bikeEvents[3])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
