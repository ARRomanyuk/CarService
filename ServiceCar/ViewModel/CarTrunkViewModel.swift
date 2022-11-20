//
//  CarTrunkViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class CarTrunkViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Повне фарбування багажника(2-ч сторін)", cost: 4500, checked: false),
        DetailServiceModel(title: "Фарбування багажника", cost: 4000, checked: false),
        DetailServiceModel(title: "Спойлер", cost: 1200, checked: false),
        DetailServiceModel(title: "Нанесення герметика", cost: 1000, checked: false)
      
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Зняття та встановлення багажника", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання багажника", cost: 400, checked: false)
       
    ]
}

