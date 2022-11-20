//
//  CustomFrame.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct CustomFrame: ViewModifier {
    
    func body(content: Content) -> some View {
        content
        .padding(.vertical, 24)
        .frame(width: rect.width - 48)
        .background(Color.white)
        .cornerRadius(18)
        .shadow(color: Color(.black).opacity(0.1), radius: 3, x: 8, y: 8 )
    }
    
}
