//
//  TextLabel.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct TextLabelView: View {
    
    var body: some View {
        VStack(alignment:.trailing, spacing: -10) {
            HStack(spacing:1) {
               Text("II")
                    .fontWeight(.light)
                    .foregroundColor(.red)
                Text("II")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Text("T")
                    .foregroundColor(.red)
                Text("ECHNO")
                    .foregroundColor(Color("Blue"))
            }
            .font(.system(size: 30))
            
            HStack(spacing:1) {
               Text("II")
                    .fontWeight(.light)
                    .foregroundColor(.red)
                Text("II")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Text("L")
                    .foregroundColor(.red)
                Text("AK")
                    .foregroundColor(Color("Blue"))
            }
            .offset(x: 5)
            .font(.system(size: 30))
        }
        .frame(width: rect.width / 1.5,alignment: .center)
    }
}

struct TextLabel_Previews: PreviewProvider {
    static var previews: some View {
        TextLabelView()
    }
}
