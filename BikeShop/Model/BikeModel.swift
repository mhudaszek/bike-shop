//
//  BikeModel.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 26/07/2022.
//

import Foundation
import UIKit

struct Bike: Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let price: Int
    let category: String
    let description: String
    var isFafourite: Bool = false
    var bikeCountToBasket: Int = 1
    var bikesAddedToBasket: Int = 0
    var formattedPrice: String { return "$\(price)" }
}

extension Bike {
    static let all: [Bike] = [
        Bike(id: 1,
             name: "AVAIL AR 1",
             imageURL: "https://images.giant-bicycles.com/b_white,c_pad,h_850,q_80/ub5w6eijdnbth0fmed6c/Avail_AR_1_Terracotta01.jpg",
             price: 1950,
             category: "Road Bikes",
             description: "Comfort: The lightweight ALUXX frame features the latest women’s endurance geometry with an Advanced-Grade Composite fork and D-Fuse seatpost to diminish vibrations."),
        Bike(id: 2,
             name: "Salsa Journeyer",
             imageURL: "https://images.giant-bicycles.com/b_white,c_pad,h_850,q_80/ub5w6eijdnbth0fmed6c/Avail_AR_1_Terracotta01.jpg",
             price: 2449,
             category: "Road Bikes",
             description: "The perfect introduction to all-road riding, the Salsa Journeyer GRX 600 bike with 700c wheels provides comfort and confidence on any road surface for long and short rides alike."),
        Bike(id: 3,
             name: "ORBEA GAIN",
             imageURL: "https://images.giant-bicycles.com/b_white,c_pad,h_850,q_80/ub5w6eijdnbth0fmed6c/Avail_AR_1_Terracotta01.jpg",
             price: 3400,
             category: "Road Bikes",
             description: "Further use when using damaged parts could lead to a major component malfunction. In addition, safety-relevant parts should be replaced at regular intervals. Wearing appropriate protective gear is absolutely essential. This category includes long-travel full-suspension bikes as well as dirt bikes."),
        Bike(id: 4,
             name: "Torque 29 CF 7",
             imageURL: "https://images.giant-bicycles.com/b_white,c_pad,h_850,q_80/ub5w6eijdnbth0fmed6c/Avail_AR_1_Terracotta01.jpg",
             price: 5600,
             category: "Road Bikes",
             description: "These bikes can be used by technically adept and experienced riders to tackle very challenging, extremely steep terrain with a high number of obstacles. In this category, big jumps are to be expected as well as intensive use in bike parks or on downhill courses. It is essential that these bikes are fully examined for any potential damage after every ride.")
    ]
}
