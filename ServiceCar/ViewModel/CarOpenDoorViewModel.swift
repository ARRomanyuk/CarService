//
//  CarOpenDoorViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class CarOpenDoorViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Фарбування пройомів пер.правих дверей", cost: 1500, checked: false),
        DetailServiceModel(title: "Фарбування пройомів зад.правих дверей", cost: 1500, checked: false),
        DetailServiceModel(title: "Фарбування стійки центральної правої", cost: 1200, checked: false),
        DetailServiceModel(title: "Фарбування порога правого", cost: 3000, checked: false),
        DetailServiceModel(title: "Фарбування пройомів пер.лівих дверей", cost: 1500, checked: false),
        DetailServiceModel(title: "Фарбування пройомів зад.лівих дверей", cost: 1500, checked: false),
        DetailServiceModel(title: "Фарбування стійки центральної лівої", cost: 1200, checked: false),
        DetailServiceModel(title: "Фарбування порога лівого", cost: 3000, checked: false)
       
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
    
        DetailServiceModel(title: "Розбір та складання пер.правого пройому", cost: 200, checked: false),
        DetailServiceModel(title: "Розбір та складання пер.лівого пройому", cost: 200, checked: false),
        DetailServiceModel(title: "Розбір та складання зад.правого пройому", cost: 200, checked: false),
        DetailServiceModel(title: "Розбір та складання зад.лівого пройому", cost: 200, checked: false)
       
    ]
}

