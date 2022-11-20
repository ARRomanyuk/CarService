//
//  CarRoofView.swift
//  ServiceCar
//
//  Created by ARomanuk on 06.10.2022.
//

import SwiftUI

struct CarRoofView: View {
    
    @ObservedObject var roof: CarRoofViewModel
   
    @State var changePosition = false
    @State var orderButton = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                
                TitleComponent(title: "Дах", subTitle: "Обирайте та натискайте на вартість щоб добавити до ремонту")
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Фарбування:")
                        .font(.system(size: 18).weight(.bold))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading)
                    
                    ForEach(roof.arrayPocraska) {item in
                    
                        DetailServiceComponent(detail: item)
                    }
                }
                .modifier(CustomFrame())
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Пошкодження:")
                        .font(.system(size: 18).weight(.bold))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading)
                    
                    ForEach(roof.arrayDamage){item in

                        DetailServiceComponent(detail: item)
                    }
                }
                .modifier(CustomFrame())
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("Розбірні роботи:")
                        .font(.system(size: 18).weight(.bold))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading)
                    
                    ForEach(roof.arrayRazborka){item in

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

struct CarRoofView_Previews: PreviewProvider {
    static var previews: some View {
        CarRoofView(roof: CarRoofViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))
    }
}
