//
//  CreditCardView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 18/08/2022.
//

import SwiftUI

struct CreditCardView: View {
        var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                
                HStack {
                    Text("Royale Gold Card")
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    Spacer()
                    Image("american_ex")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .clipped()
                        .cornerRadius(4)
                }
                
                VStack(spacing: 6) {
                    HStack {
                        Spacer()
                        Text("7438  3425  7894  5465")
                            .font(.system(size: 25, weight: .semibold, design: .rounded))
                        Spacer()
                    }
                    
                    HStack {
                        Text("Valid From: 01/22")
                            .font(.system(size: 12, weight: .medium))
                                            
                        Text("Valid Upto: 08/25")
                            .font(.system(size: 12, weight: .medium))
                    }
                }
                
                HStack {
                    Text("Nicolas Martin")
                        .font(.system(size: 18, weight: .medium, design: .serif))
                    Spacer()
                    Image("mastercard")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .clipped()
                        .cornerRadius(4)
                }
            }
            .foregroundColor(.white)
            .padding()
            .background(
                LinearGradient(colors: [Color(red: 176/255, green: 143/255, blue: 38/255, opacity: 1), Color.black], startPoint: .top, endPoint: .bottom)
            )
            .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.black.opacity(0.5), lineWidth: 1)
            )
            .cornerRadius(6)
            .shadow(radius: 5)
            .padding(.horizontal)
            .padding(.top, 8)
        }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
