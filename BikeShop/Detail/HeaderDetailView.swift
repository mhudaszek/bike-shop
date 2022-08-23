//
//  HeaderDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 23/05/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    var bike: Bike
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text(bike.category)
            
            Text(bike.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(bike: Bike.all[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
