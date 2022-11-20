//
//  CarBumperViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class CarBumperViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Повне фарбування бампера переднього", cost: 4000, checked: false),
        DetailServiceModel(title: "Повне фарбування бампера заднього", cost: 4000, checked: false),
        DetailServiceModel(title: "Частичне фарбування бампера переднього", cost: 2500, checked: false),
        DetailServiceModel(title: "Частичне фарбування бампера заднього", cost: 2500, checked: false),
        DetailServiceModel(title: "Розширювач бампера переднього", cost: 1000, checked: false),
        DetailServiceModel(title: "Розширювач бампера заднього", cost: 1000, checked: false),
        DetailServiceModel(title: "Фарбування решітки бампера", cost: 1000, checked: false)
      
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Зняття та встановлення бампера переднього", cost: 400, checked: false),
        DetailServiceModel(title: "Зняття та встановлення бампера заднього", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання бампера переднього", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання бампера заднього", cost: 400, checked: false),
        DetailServiceModel(title: "Заміна бампера заднього", cost: 800, checked: false),
        DetailServiceModel(title: "Заміна бампера переднього", cost: 800, checked: false)
       
    ]
}

