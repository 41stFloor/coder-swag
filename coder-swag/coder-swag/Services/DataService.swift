//
//  DataService.swift
//  coder-swag
//
//  Created by Jonah Travis on 9/23/19.
//  Copyright © 2019 Jonah Travis. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hsr White", price: "$48", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Graphic Hoodie Grey", price: "$84", imageName: "hoodie01.png"),
         Product(title: "Devslopes Logo Graphic Hoodie red", price: "$95", imageName: "hoodie02.png"),
          Product(title: "Devslopes Logo Graphic Hoodie Grey", price: "$55", imageName: "hoodie03.png"),
           Product(title: "Devslopes Logo Graphic Hoodie Black", price: "$77", imageName: "hoodie04.png")
      
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Graphic shirt Grey", price: "$55", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Graphic shirt red", price: "$8", imageName: "shirte02.png"),
        Product(title: "Devslopes Logo Graphic shirt Grey", price: "$80", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Graphic shirt Black", price: "$40", imageName: "shirt04.png"),
         Product(title: "Kickflip studios black", price: "$90", imageName: "shirt05.png")
        
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
           return  getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    
}
