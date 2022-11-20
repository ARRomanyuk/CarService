//
//  CatalogModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import Foundation

struct CatalogModel: Identifiable {
    
    var id = UUID().uuidString
    var image: String
    var title: String
    
}
