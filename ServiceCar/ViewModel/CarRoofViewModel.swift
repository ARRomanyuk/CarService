//
//  CarRoofViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class CarRoofViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Фарбування даху", cost: 6000, checked: false),
        DetailServiceModel(title: "Частичне фабування даху", cost: 4000, checked: false),
        
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Зняття та встановлення рейлінгів", cost: 800, checked: false),
       
    ]
}

