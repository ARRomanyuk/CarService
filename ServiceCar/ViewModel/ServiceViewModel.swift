//
//  ServiceViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 03.10.2022.
//

import Foundation

class ServiceViewModel: ObservableObject {
    
    @Published var service : ServiceModel
    
    init(service: ServiceModel) {
        self.service = service
    }
    
    var arrayService: [ServiceModel] = [
        
        ServiceModel(title: "Крилья"),
        ServiceModel(title: "Двері"),
        ServiceModel(title: "Бампера"),
        ServiceModel(title: "Капот"),
        ServiceModel(title: "Дах"),
        ServiceModel(title: "Багажник"),
        ServiceModel(title: "Пройоми та короба"),
        ServiceModel(title: "Інші послуги")
        
    ]
}
