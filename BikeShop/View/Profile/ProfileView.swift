//
//  ProfileView.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 18/08/2022.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                MapView()
                    .frame(height: 300)
                
                ProfileAvatarView()
                    .offset(y: -110)
                    .padding(.bottom, -110)
                
                Text(userViewModel.mirasUser.name)
                    .font(.title)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("My Cards")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    
                    CardListView()
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(UserViewModel())
    }
}
