//
//  WingView.swift
//  ServiceCar
//
//  Created by ARomanuk on 06.10.2022.
//

import SwiftUI

struct CarWings: View {
    
    @Environment (\.dismiss) var dismiss
    
    @ObservedObject var wings: CarWingsViewModel
   
    @State var changePosition = false
    @State var orderButton = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                
                TitleComponent(dismiss: _dismiss, title: "Крило", subTitle: "Обирайте та натискайте на вартість щоб добавити до ремонту")
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Фарбування:")
                        .font(.system(size: 18).weight(.bold))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading)
                    
                    ForEach(wings.arrayPocraska) {item in
                    
                        DetailServiceComponent(detail: item)
                    }
                }
                .modifier(CustomFrame())
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Пошкодження:")
                        .font(.system(size: 18).weight(.bold))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading)
                    
                    ForEach(wings.arrayDamage){item in

                        DetailServiceComponent(detail: item)
                    }
                }
                .modifier(CustomFrame())
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Розбірні роботи:")
                        .font(.system(size: 18).weight(.bold))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading)
                    
                    ForEach(wings.arrayRazborka){item in

                        DetailServiceComponent(detail: item)

                    }
                }
                .modifier(CustomFrame())
                
                Button(action: {
                    orderButton.toggle()
                    print("Перейти до підрахунків")
                }, label: {
                    Text("Перейти до підрахунку")
                        .modifier(ButtonComponent())
                })
            }
        }
        .fullScreenCover(isPresented: $orderButton, content: {
            OrderView(order: OrderViewModel.shared)
        })
    }
}

struct WingView_Previews: PreviewProvider {
    static var previews: some View {
        CarWings(wings: CarWingsViewModel())
    }
}
