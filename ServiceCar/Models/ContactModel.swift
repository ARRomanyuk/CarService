//
//  ContactModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import Foundation

struct ContactModel: Identifiable {
    
    var id = UUID().uuidString
    var title : String
    var subTitle : String
    
}
