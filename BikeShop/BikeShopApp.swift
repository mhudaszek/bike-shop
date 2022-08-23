//
//  BikeShopApp.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 26/07/2022.
//

import SwiftUI

@main
struct BikeShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BikesViewModel())
                .environmentObject(UserViewModel())
        }
    }
}
