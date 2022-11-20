//
//  DetailViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 09.10.2022.
//

import Foundation

class DetailViewModel: ObservableObject {
    
    @Published var detailModel: HomeModel
        
    init(detail: HomeModel) {
        self.detailModel = detail
    }
    
}
