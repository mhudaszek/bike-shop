//
//  LogoView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 20/05/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 8) {
            Text("Bike".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("bicycle-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Shop".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
