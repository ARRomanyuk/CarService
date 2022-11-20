//
//  SparesView.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct SparesView: View {
    
    @State var firstNameField = ""
    @State var lastNameField = ""
    @State var numberPhoneField = ""
    @State var carField = ""
    @State var vinCodeField = ""
    @State var spareField = ""
    
    var body: some View {
        VStack(spacing: 25) {
           TitleComponent(title: "Замовити запчастину", subTitle: "Професійний підбір автозапчастин з гарантіею")
            
            VStack(spacing: 16) {
               
                TextFieldCell(textField: $firstNameField, textFieldHead: "Ім'я" )
                TextFieldCell(textField: $lastNameField, textFieldHead: "Прізвище" )
                TextFieldCell(textField: $numberPhoneField, textFieldHead: "Тел:")
                TextFieldCell(textField: $carField, textFieldHead: "Модель автомобіля")
                TextFieldCell(textField: $vinCodeField, textFieldHead: "VIN Code")
            }
            .modifier(CustomFrame())
            
            VStack(spacing: 30) {
                Text("Яка запчастина вам потрібна?")
                    .font(.system(size: 16).weight(.medium))
                    .foregroundColor(Color("DarkGray"))
                
                TextField("", text: $spareField, prompt: Text("Писати тут..."))
                    .multilineTextAlignment(.center)
            }
            .modifier(CustomFrame())
            
            Button(action: {
                print("Order spare")
            }, label: {
                Text("Замовити")
                    .modifier(ButtonComponent())
            })
                
            Spacer()
        }
    }
}

struct SparesView_Previews: PreviewProvider {
    static var previews: some View {
        SparesView()
    }
}
