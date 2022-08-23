//
//  BikesViewModel.swift
//  BikeShop
//
//  Created by Mirosław Hudaszek on 13/08/2022.
//

import Foundation

class BikesViewModel: ObservableObject {
    @Published var bikes = Bike.all
    @Published private(set) var basket = [Bike]()
    @Published private(set) var totalPrice: Int = 0
    @Published var price: Int = 0
    var selectedIdBike = 0
    
    func switchFavouritesState(for bike: Bike) {
        guard let index = bikes.firstIndex(where: { $0.id == bike.id }) else { return }
        bikes[index].isFafourite.toggle()
    }
    
    func isFavourites(bike: Bike) -> Bool {
        guard let index = bikes.firstIndex(where: { $0.id == bike.id }) else { return false }
        return bikes[index].isFafourite
    }
    
    var favouritesBikes: [Bike] {
        return bikes.filter { $0.isFafourite }
    }
    
    func addToBasket(bike: Bike) {
        for _ in 0...bike.bikeCountToBasket - 1 {
            var bike = bike
            bike.bikesAddedToBasket = bike.bikeCountToBasket
            basket.append(bike)
        }
        updateBikeCountToBasket(bike: bike, count: 1)
        updateTotalPrice()
    }
    
    func removeFromBasket(bike: Bike) {
        basket = basket.filter { $0.id != bike.id }
        updateTotalPrice()
    }
    
    func updateTotalPrice() {
        totalPrice = basket.map({ $0.price }).reduce(0, +)
    }
    
    func bikeCountToBasket(bike: Bike) -> Int {
        guard let index = bikes.firstIndex(where: { $0.id == bike.id }) else { return 0 }
        return bikes[index].bikeCountToBasket
    }
    
    func updateBikeCountToBasket(bike: Bike, count: Int) {
        guard let index = bikes.firstIndex(where: { $0.id == bike.id }) else { return }
        bikes[index].bikeCountToBasket = count
    }
    
    func countAddedBikeToBasket(bike: Bike) -> Int {
        guard let index = basket.firstIndex(where: { $0.id == bike.id }) else { return 0 }
        return basket[index].bikesAddedToBasket
    }
    
    func updateCountAddedBikesToBasket(bike: Bike, count: Int) {
        guard count > 0, let index = basket.firstIndex(where: { $0.id == bike.id }), !basket.isEmpty else { return }
        count >= basket[index].bikesAddedToBasket
            ? (totalPrice += bike.price)
            : (totalPrice -= bike.price)
        
        basket[index].bikesAddedToBasket = count
    }
    
    func priceBike(bike: Bike) -> String {
        guard let index = bikes.firstIndex(where: { $0.id == bike.id }) else { return "" }
        return "$ \(bikes[index].price * bikes[index].bikeCountToBasket)"
    }
    
    func selectedBike() -> Bike {
        return bikes.first(where: { $0.id == selectedIdBike }) ?? sampleBike
    }
}
