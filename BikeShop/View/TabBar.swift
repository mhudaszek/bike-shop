//
//  TabBar.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 04/08/2022.
//

import SwiftUI

struct TabBar: View {
    enum Tab {
        case home
        case favourites
        case basket
        case profile
    }
    
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
                .environment(\.currentTab, $selectedTab)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag(Tab.favourites)
            
            BasketView()
                .tabItem {
                    Label("Basket", systemImage: "cart")
                }
                .tag(Tab.basket)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
                .tag(Tab.profile)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

struct CurrentTabKey: EnvironmentKey {
    static var defaultValue: Binding<TabBar.Tab> = .constant(.home)
}

extension EnvironmentValues {
    var currentTab: Binding<TabBar.Tab> {
        get { self[CurrentTabKey.self] }
        set { self[CurrentTabKey.self] = newValue }
    }
}
