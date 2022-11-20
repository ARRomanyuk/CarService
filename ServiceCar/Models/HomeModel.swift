//
//  HomeModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import Foundation

struct HomeModel: Identifiable {
    
    var id = UUID().uuidString
    var image: String
    var title: String
    var description: String
    var tapImage: Bool
    var imageOne : String
    var imageTwo : String
    var descriptionOne : String
    var descriptionTwo : String
    var arrayPic : [String]?
}
