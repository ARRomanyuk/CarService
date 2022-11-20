//
//  ContactComponent.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct ContactComponent: View {
    
    var title: String
    var subTitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .foregroundColor(Color("DarkGray"))
                .font(.system(size: 18))
                .fontWeight(.bold)
            
            Text(subTitle)
                .foregroundColor(Color("DarkGray"))
                .font(.system(size: 18))
                .fontWeight(.medium)
        }
    }
}

struct ContactComponent_Previews: PreviewProvider {
    static var previews: some View {
        ContactComponent(title: "Кузовний ремонт", subTitle: "+380997073711")
    }
}
