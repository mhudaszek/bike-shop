//
//  TopPartDetailView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 23/05/2022.
//

import SwiftUI
import CachedAsyncImage

struct TopPartDetailView: View {
    var bike: Bike
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6, content: {
                VStack(alignment: .leading, spacing: 6, content: {
                    Text("Price")
                        .fontWeight(.semibold)
                    
                    Text(bike.formattedPrice)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .scaleEffect(1.35, anchor: .leading)
                })
                .offset(y: isAnimating ? 0 : -25)
                
                Spacer()
            })
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.75)) {
                    isAnimating.toggle()
                }
            })
            
            CachedAsyncImage(url: URL(string: bike.imageURL)) { image in
                image
                    .image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 305, height: 230, alignment: .center)
                    .offset(y: isAnimating ? 0 : -35)
                
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(bike: Bike.all[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
