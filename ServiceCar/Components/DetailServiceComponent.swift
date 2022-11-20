//
//  DetailServiceComponent.swift
//  ServiceCar
//
//  Created by ARomanuk on 06.10.2022.
//

import SwiftUI

struct DetailServiceComponent: View {
    
    @State var detail: DetailServiceModel
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16) {
            HStack {
                Text(detail.title)
                    .font(.system(size: 16).weight(.medium))
                
                Spacer()
                
                HStack(spacing:5) {
                    Text("від")
                        .font(.system(size: 16).weight(.medium))
                        .frame(width: 50)
                    
                    Text("\(detail.cost) грн")
                        .font(.system(size: 18).weight(.bold))
                        .frame(width: 100, alignment: .trailing)
                }
            }
            .foregroundColor(detail.checked ? Color("Blue") : Color("DarkGray"))
            .onTapGesture(perform: {
                
                detail.checked.toggle()
                
                if detail.checked {
                    OrderViewModel.shared.addPosition(position: detail)
                }else if !detail.checked{
                    OrderViewModel.shared.arrayPosition.removeAll(where: {position in
                        detail.id == position.id
                    })
                }
            })
        }
        .padding(.horizontal)
    }
}

struct DetailServiceComponent_Previews: PreviewProvider {
    static var previews: some View {
        DetailServiceComponent(detail: DetailServiceModel(title: "Alex", cost: 300, checked: false))
    }
}

