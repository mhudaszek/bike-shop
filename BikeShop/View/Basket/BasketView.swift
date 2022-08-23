//
//  BasketView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 16/08/2022.
//

import SwiftUI

struct BasketView: View {
    @EnvironmentObject var bikesViewModel: BikesViewModel
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        NavigationView {
            if bikesViewModel.basket.isEmpty {
                VStack {
                    Image("basketIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 130, alignment: .center)
                    
                    Text("You haven't saved any items in Baske yet.")
                        .padding()
                        .navigationTitle("Basket")
                }
            } else {
                VStack {
                    BasketList()
                        .navigationTitle("Basket")
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Total: $\(bikesViewModel.totalPrice)")
                            .font(Font.custom("HelveticaNeue-Bold", size: 16))
                        
                        Button(action: {
                            userViewModel.changeCardSelection(cardId: 1)
                        }, label: {
                            Text("PAY WITH  APPLE")
                                .font(Font.custom("HelveticaNeue-Bold", size: 16))
                                .padding(.horizontal, 40)
                                .padding(.vertical, 10)
                                .foregroundColor(.white)
                        })
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .clipShape(Capsule())
                    }
                    .padding(20)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
            .environmentObject(BikesViewModel())
            .environmentObject(UserViewModel())
    }
}
