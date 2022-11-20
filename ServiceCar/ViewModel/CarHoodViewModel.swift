//
//  CarHoodViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class CarHoodViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Повне фарбування капота (2-х сторін)", cost: 7000, checked: false),
        DetailServiceModel(title: "Фарбування капота", cost: 5000, checked: false),
        DetailServiceModel(title: "Нанесення геметику", cost: 2500, checked: false),
       
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Зняття та встановлення капота", cost: 300, checked: false),
        DetailServiceModel(title: "Розбір та складання бампера переднього", cost: 200, checked: false)
       
    ]
}

