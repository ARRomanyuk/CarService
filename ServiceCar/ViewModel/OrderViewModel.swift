//
//  CartViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 06.10.2022.
//

import Foundation

class OrderViewModel: ObservableObject {
    
    static var shared = OrderViewModel()
        
    private init(){}
    
    @Published var arrayPosition = [DetailServiceModel]()
    
    var sum: Int {
        
        var sum = 0
        
        for i in arrayPosition {
            sum += i.cost
        }
        return sum
    }
    
    func addPosition(position: DetailServiceModel){
        self.arrayPosition.append(position)
    }
}
