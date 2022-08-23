//
//  Constant.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 19/05/2022.
//

import SwiftUI

// DATA
let bikeEvents: [BikeEvent] = Bundle.main.decode("bikeEvents.json")
let categories: [Category] = Bundle.main.decode("category.json")
let sampleBike: Bike = Bike.all[0]//bikes[0]

// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
