//
//  ProfileAvatarView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 18/08/2022.
//

import SwiftUI

struct ProfileAvatarView: View {
    var body: some View {
        Image("profileAvatarIcon")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct ProfileAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAvatarView()
    }
}
