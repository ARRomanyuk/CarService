//
//  CarDoorViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class CarDoorViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Повне фарбування пер.правих дверей (2-х сторін)", cost: 4600, checked: false),
        DetailServiceModel(title: "Повне фарбування зад.правих дверей (2-х сторін)", cost: 4600, checked: false),
        DetailServiceModel(title: "Фарбування пер.правих дверей", cost: 4000, checked: false),
        DetailServiceModel(title: "Фарбування зад.правих дверей", cost: 4000, checked: false),
        DetailServiceModel(title: "Молдінг пер.правих дверей", cost: 600, checked: false),
        DetailServiceModel(title: "Молдінг зад.правих дверей", cost: 600, checked: false),
        DetailServiceModel(title: "Розширувач арки пер.правих дверей", cost: 1000, checked: false),
        DetailServiceModel(title: "Розширувач арки зад.правих дверей", cost: 1000, checked: false),
        DetailServiceModel(title: "Фарбування ручки пер.правих дверей", cost: 500, checked: false),
        DetailServiceModel(title: "Фарбування ручки зад.правих дверей", cost: 500, checked: false),
        DetailServiceModel(title: "Фарбування дзеркала правого", cost: 800, checked: false),
        DetailServiceModel(title: "Повне фарбування пер.лівих дверей (2-х сторін)", cost: 4600, checked: false),
        DetailServiceModel(title: "Повне фарбування зад.лівих дверей (2-х сторін)", cost: 4600, checked: false),
        DetailServiceModel(title: "Фарбування пер.лівих дверей", cost: 4000, checked: false),
        DetailServiceModel(title: "Фарбування зад.лівих дверей", cost: 4000, checked: false),
        DetailServiceModel(title: "Молдінг пер.лівих дверей", cost: 600, checked: false),
        DetailServiceModel(title: "Молдінг зад.лівих дверей", cost: 600, checked: false),
        DetailServiceModel(title: "Розширувач арки пер.лівих дверей", cost: 1000, checked: false),
        DetailServiceModel(title: "Розширувач арки зад.лівих дверей", cost: 1000, checked: false),
        DetailServiceModel(title: "Фарбування ручки пер.лівих дверей", cost: 500, checked: false),
        DetailServiceModel(title: "Фарбування ручки зад.лівих дверей", cost: 500, checked: false),
        DetailServiceModel(title: "Фарбування дзеркала лівого", cost: 800, checked: false),
        
        
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Зняття та встановлення пер.правих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Зняття та встановлення пер.лівих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання пер.лівих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання пер.правих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Заміна пер.правих дверей", cost: 800, checked: false),
        DetailServiceModel(title: "Заміна пер.лівих дверей", cost: 800, checked: false),
        DetailServiceModel(title: "Зняття та встановлення зад.правих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Зняття та встановлення зад.лівих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання зад.лівих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання зад.правих дверей", cost: 400, checked: false),
        DetailServiceModel(title: "Заміна зад.правих дверей", cost: 800, checked: false),
        DetailServiceModel(title: "Заміна зад.лівих дверей", cost: 800, checked: false)
        
    ]
}
