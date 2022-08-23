//
//  CardView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 18/08/2022.
//

import SwiftUI

struct CardView: View {
    var card: CardModel
    
    private var isSelected: Bool {
        return card.isSelected
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image("visaIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 15)
                    .foregroundColor(isSelected ? .white : .black)
                    .padding()
            }
            Spacer()
            Text("Balance")
                .foregroundColor(isSelected ? .white : .black)
                .font(.caption)
                .padding(.bottom, 5)
            HStack(alignment: .center) {
                Text("USD")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.caption)
                Text("$17,370.52")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.headline)
                    .fontWeight(.heavy)
            }
            .padding(.bottom)
            Spacer()
            Text("**** **** **** 3022")
                .foregroundColor(isSelected ? .white : .black)
                .font(.caption)
                .padding(.bottom)
        }
        .frame(width: 130, height: 150)
        .padding(8)
        .background(Color(isSelected ? #colorLiteral(red: 0.3097526431, green: 0.3843510449, blue: 0.7528470159, alpha: 1) : .white))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(card: CardModel.all[0])
                .previewLayout(.sizeThatFits)
            CardView(card: CardModel.all[0])
                .previewLayout(.sizeThatFits)
        }
    }
}
