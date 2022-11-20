//
//  OtherViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 08.10.2022.
//

import Foundation

class OtherViewModel: ObservableObject {
    
    @Published var detail: DetailServiceModel
    
    init(detail: DetailServiceModel) {
        self.detail = detail
    }
        
    var arrayOther: [DetailServiceModel] = [
        
        DetailServiceModel(title: "Заміна лобового скла", cost: 1200, checked: false),
        DetailServiceModel(title: "Заміна заднього скла", cost: 1200, checked: false),
        DetailServiceModel(title: "Зняття та встановлення даху ", cost: 1500, checked: false),
        DetailServiceModel(title: "Зняття та встановлення баранки", cost: 500, checked: false),
        DetailServiceModel(title: "Зняття та встановлення передньої панелі водія", cost: 3000, checked: false),
        DetailServiceModel(title: "Заміна панелі радіатора", cost: 1500, checked: false),
        DetailServiceModel(title: "Заміна фари", cost: 500, checked: false),
        DetailServiceModel(title: "Заміна фонаря заднього", cost: 500, checked: false),
        DetailServiceModel(title: "Розбір та складання салону", cost: 2500, checked: false)
       
    ]
   
}
