//
//  TitleView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 21/05/2022.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, -30)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
