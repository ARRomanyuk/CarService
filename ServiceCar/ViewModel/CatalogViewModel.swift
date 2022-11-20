//
//  CatalogViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import Foundation

class CatalogViewModel: ObservableObject {
    @Published var catalog : CatalogModel
    
    init(catalog: CatalogModel) {
        self.catalog = catalog
    }
    
    var arrayCatalog: [CatalogModel] = [
        CatalogModel(image: "list.bullet.rectangle.portrait", title: "Послуги"),
        CatalogModel(image: "wrench.and.screwdriver", title: "Запчастини"),
        CatalogModel(image: "camera", title: "Порохування за фото"),
        CatalogModel(image: "cart", title: "Кошик"),
        CatalogModel(image: "menucard", title: "Контакти"),
        CatalogModel(image: "info.circle", title: "Про нас")
    ]
}
