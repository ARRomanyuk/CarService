//
//  DetailServiceModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 06.10.2022.
//

import Foundation

struct DetailServiceModel: Identifiable {
    
    var id = UUID().uuidString
    var title : String
    var cost : Int
    var checked: Bool
    
}
