//
//  SingView.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct SingView: View {
    
    @State var emailField = ""
    @State var passwordFiled = ""
    @State var conformPassword = ""
    @State var registrationButton = false
    @State var alertShow = false
    @State var message = ""
    @State var isHomeView = false
    
    var body: some View {
        VStack(spacing: 30) {
            
            if registrationButton {
                TitleComponent(title: "Реестрація",
                                subTitle: "Введіть ваш email та пароль щоб зарееструватися")
            }else {
                TitleComponent(title: "Ми раді бачити вас знову!",
                                subTitle: "Введіть ваш email та пароль щоб увійти до облікового запису")
            }
            
            VStack(spacing: 24) {
                
                TextFieldCell(textField :$emailField , textFieldHead: "введіть вашу електрону пошту", image: "envelope")
                
                SecureFieldCell(textField: $passwordFiled, image: "lock", textFieldHead: "введіть ваш пароль")
                
                if registrationButton {
                    SecureFieldCell(textField: $conformPassword, image: "lock.open", textFieldHead: "введіть ваш пароль ще раз")
                }
            }
            .modifier(CustomFrame())
            
            Button(action: {
//MARK: -Auth Sing Up
                if registrationButton {
                    
                    guard passwordFiled == conformPassword else {
                        message = "паролі не співпадають"
                        alertShow.toggle()
                        return
                    }
                    
                    AuthView.shared.singUp(email: emailField, passsword: passwordFiled) { result in
                        
                        switch result {
                            
                        case .success(let user):
                            
                            message = "Ви зарееструвалися як \(user.email!)"
                            alertShow.toggle()
                                
                            emailField = ""
                            passwordFiled = ""
                            conformPassword = ""
                                
                            registrationButton.toggle()
                        
                        case .failure(let error):
                            message = "\(error)"
                            alertShow.toggle()
                        }
                    }
                    
                } else {
//MARK: -Auth Sing In
                    
                    AuthView.shared.signIn(email: emailField, password: passwordFiled) { result in
                        switch result {
                            
                        case .success(_):
                            isHomeView.toggle()
                        case .failure(let error):
                            message = "Не вірний email чи пароль"
                            alertShow.toggle()
                            print(error.localizedDescription)
                        }
                    }
                    
                    print("SingIN")
                }
                
            }, label: {
                Text(registrationButton ? "Зарееструватися" : "Увійти"  )
                    .modifier(ButtonComponent())
            })
            
            HStack {
                Spacer()
                
                Button(action: {
                    registrationButton.toggle()
                    print("Registration!")
                }, label: {
                    Text( registrationButton ? "Вже зарестровані" : "Зарееструватися?")
                        .foregroundColor(Color("Blue"))
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .padding(.trailing, 24)
                })
            }
            
            Spacer()
        
            Text("Або увійдіть через соціальну мережу")
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
                .foregroundColor(Color("Gray"))
                .frame(width: rect.width / 1.5)
            
            HStack(alignment: .center, spacing: 16) {
                Button(action: {
                    print("facebook")
                }, label: {
                    Image("facebook")
                        .resizable()
                        .frame(width: 40, height: 40)
                        
                })
                
                Button(action: {
                    print("instagram")
                }, label: {
                    Image("instagram")
                        .resizable()
                        .frame(width: 40, height: 40)
                        
                })
                
                Button(action: {
                    print("apple")
                }, label: {
                    Image("apple")
                        .resizable()
                        .frame(width: 40, height: 40)
                        
                })
            }
        }
        .animation(.linear(duration: 0.3), value: registrationButton)
        .alert(self.message, isPresented: $alertShow, actions: {})
        .fullScreenCover(isPresented: $isHomeView, content: {
            HomeView(home: HomeViewModel(home: HomeModel(image: "", title: "", description: "", tapImage: false, imageOne: "", imageTwo: "", descriptionOne: "", descriptionTwo: "")), catalog: CatalogViewModel(catalog: CatalogModel(image: "", title: "")))
        })
    }
}

struct SingView_Previews: PreviewProvider {
    static var previews: some View {
        SingView(registrationButton: false)
    }
}
