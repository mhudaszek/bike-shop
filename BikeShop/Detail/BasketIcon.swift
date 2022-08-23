//
//  BasketIcon.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 15/08/2022.
//

import SwiftUI

struct BasketIcon: View {
    var numberOfProducts: Int
    @Environment(\.currentTab) var tab
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                tab.wrappedValue = .basket
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "cart")
                    .padding(.top, 10)
                    .padding(.trailing, 5)
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.body).bold()
                    .foregroundColor(.white)
                    .frame(width: 24, height: 24)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct BasketIcon_Previews: PreviewProvider {
    static var previews: some View {
        BasketIcon(numberOfProducts: 1)
    }
}
