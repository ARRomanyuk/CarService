//
//  ButtonComponent.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct ButtonComponent: ViewModifier {
        
    func body(content: Content) -> some View {
        content
        .frame(width: rect.width - 32, height: 60)
        .background(Color("Blue"))
        .foregroundColor(.white)
        .font(.system(size: 18, weight: .bold))
        .cornerRadius(14)
        
    }
}
