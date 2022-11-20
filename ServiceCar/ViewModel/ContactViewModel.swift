//
//  ContactViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import Foundation

class ContactViewModel: ObservableObject {
    
    @Published var contact : ContactModel
    
    init(contact: ContactModel) {
        self.contact = contact
    }
    
    var arrayContact:[ContactModel] = [
        ContactModel(title: "Кузовний ремонт:", subTitle: "+38 (099) 707 37 11"),
        ContactModel(title: "Детейлінг:", subTitle: "+38 (066) 344 51 41"),
        ContactModel(title: "Email:", subTitle: "service@technolak.com.ua"),
        ContactModel(title: "Понеділок - Пятниця:", subTitle: "с 9-00 до 18-00"),
        ContactModel(title: "Субота:", subTitle: "с 9-00 до 14-00")
    ]
}
