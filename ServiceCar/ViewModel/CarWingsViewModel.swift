//
//  DetailServiceViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 06.10.2022.
//

import Foundation

class CarWingsViewModel: ObservableObject {
    
        
    var arrayPocraska: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Повне фарбування пер.правого крила", cost: 3500, checked: false),
        DetailServiceModel(title: "Повне фарбування зад.правого крила", cost: 3500, checked: false),
        DetailServiceModel(title: "Частичне фарбування пер.правого крила", cost: 2500, checked: false),
        DetailServiceModel(title: "Частичне фарбування зад.правого крила", cost: 2500, checked: false),
        DetailServiceModel(title: "Молдінг пер.правого крила", cost: 600, checked: false),
        DetailServiceModel(title: "Молдінг зад.правого крила", cost: 600, checked: false),
        DetailServiceModel(title: "Розширувач арки пер.правого крила", cost: 1000, checked: false),
        DetailServiceModel(title: "Розширувач арки зад.правого крила", cost: 1000, checked: false),
        DetailServiceModel(title: "Повне фарбування пер.лівого крила", cost: 3500, checked: false),
        DetailServiceModel(title: "Повне фарбування зад.лівого крила", cost: 3500, checked: false),
        DetailServiceModel(title: "Частичне фарбування пер.лівого крила", cost: 2500, checked: false),
        DetailServiceModel(title: "Частичне фарбування зад.лівого крила", cost: 2500, checked: false),
        DetailServiceModel(title: "Молдінг пер.лівого крила", cost: 600, checked: false),
        DetailServiceModel(title: "Молдінг зад.лівого крила", cost: 600, checked: false),
        DetailServiceModel(title: "Розширувач арки пер.лівого крила", cost: 1000, checked: false),
        DetailServiceModel(title: "Розширувач арки зад.лівого крила", cost: 1000, checked: false)
        
    ]
    
    var arrayDamage: [DetailServiceModel] = [
        
        DetailServiceModel(title: "До 5 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 10 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 15 см", cost: 0, checked: false),
        DetailServiceModel(title: "До 20 см", cost: 0, checked: false),
        DetailServiceModel(title: "Більше ніж 20 - 25 см", cost: 0, checked: false)
        
    ]
    
    var arrayRazborka: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Зняття та встановлення пер.правого крила", cost: 400, checked: false),
        DetailServiceModel(title: "Зняття та встановлення пер.лівого крила", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання пер.правого крила", cost: 400, checked: false),
        DetailServiceModel(title: "Розбір та складання пер.лівого крила", cost: 400, checked: false),
        DetailServiceModel(title: "Заміна пер.правого крила", cost: 800, checked: false),
        DetailServiceModel(title: "Заміна пер.лівого крила", cost: 800, checked: false)
        
    ]
    
}
