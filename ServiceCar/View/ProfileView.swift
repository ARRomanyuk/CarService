//
//  ProfileView.swift
//  ServiceCar
//
//  Created by ARomanuk on 11.10.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var firstNameField = ""
    @State var lastNameField = ""
    @State var phoneField = ""
    @State var emailField = ""
    
    var body: some View {
        VStack(spacing: 30) {
            TitleComponent(title: "Налаштування профіля", subTitle: "")
            
            VStack {
                VStack {
                    HStack(spacing: 16) {
                        
                        ImageProfileComponent()
                        
                        VStack {
                            TextField("", text: $firstNameField, prompt: Text("Ім'я"))
                            Divider()
                                
                            TextField("", text: $lastNameField, prompt: Text("Прізвище"))
                            Divider()
                        }
                    }
                    
                    TextField("", text: $phoneField, prompt: Text("+380"))
                    Divider()
                    
                    TextField("", text: $emailField, prompt: Text("Ваш email..."))
                    Divider()
                }
                .padding()
            }
            .modifier(CustomFrame())
            
            Button(action: {
                print("Запамьтати")
            }, label: {
                Text("Запам'ятати")
                    .modifier(ButtonComponent())
            })
                
            Text("Ваші замовлення:")
                .font(.system(size: 18).bold())
                .foregroundColor(Color("DarkGray"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
            List {
            // here will be our orders with FireBase
            }
            
            Spacer()
        }
        .onAppear{
            UITableView.appearance().backgroundColor = .clear
        }
        .environmentObject(RepresentableViewModel())
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

