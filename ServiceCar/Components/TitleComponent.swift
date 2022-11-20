//
//  TitleComponent.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct TitleComponent: View {
    
    @Environment (\.dismiss) var dismiss
    
    @State var title : String
    @State var subTitle : String
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            HStack {
                Button(action: {
                    
                    dismiss()
                    
                   print("Back!")
                }, label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color("DarkGray"))
            })
                    .padding(.leading, 16)
                Spacer()
            }
            
            Text(title)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("DarkGray"))
                .frame(width: rect.width / 1.3)
            
            Text(subTitle)
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
                .foregroundColor(Color("Gray"))
                .frame(width: rect.width - 100)
            
        }
    }
}

struct TitleComponent_Previews: PreviewProvider {
    static var previews: some View {
        TitleComponent(title: "Ми раді бачити вас знову!", subTitle: "Порахуй")
    }
}
