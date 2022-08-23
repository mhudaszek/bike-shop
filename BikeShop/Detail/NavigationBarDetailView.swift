//
//  NavigationBarDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 23/05/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    presentationMode.wrappedValue.dismiss()
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            BasketIcon(numberOfProducts: bikesViewModel.basket.count)
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
