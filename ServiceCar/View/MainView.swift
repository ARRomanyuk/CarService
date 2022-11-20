//
//  MainView.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var singInButton = false
    @State private var registrationButton = false
    @State private var skipButton = false
    @StateObject var homeView = HomeViewModel(home: HomeModel(image: "", title: "", description: "", tapImage: false, imageOne: "", imageTwo: "", descriptionOne: "", descriptionTwo: ""))
    
    var body: some View {
        ZStack {
            VStack {
                Image("MB")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: rect.width, height: rect.height / 1.5)
                    
                Spacer()
            }
            VStack(spacing: 24) {
                
                Text("Ласкаво просимо в TechnoLack!")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("DarkGray"))
                    .frame(width: rect.width / 1.5)
                    .padding(.top, 24)
                
                Text("Порахуй вартість свого ремонту онлайн")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))
                    .foregroundColor(Color("Gray"))
                    .frame(width: rect.width / 1.5)
                
                Button(action: {
                    
                    registrationButton.toggle()
                    
                    print("Registration!")
                }, label: {
                    Text("Зарееструватися")
                        .modifier(ButtonComponent())
                })
                    
                HStack(spacing: 16) {
                    Text("Вже маете акаунт?")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(Color("Gray"))
                    
                    Button(action: {
                        
                        singInButton.toggle()
                        
                        print("Sing In!")
                    }, label: {
                        Text("Увійти")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundColor(Color("Blue"))
                    })
                }
                
                Button(action: {
                    
                    skipButton.toggle()
                    
                    print("Skip!")
                }, label: {
                    Text("Пропустити")
                        .foregroundColor(Color("DarkGray"))
                        .font(.system(size: 18, weight: .bold))
                })

            }
            .frame(width: rect.width)
            .background(Color.white)
            .cornerRadius(24)
            .offset(y: rect.height / 4)
        }
        .edgesIgnoringSafeArea(.all)
        .fullScreenCover(isPresented: $singInButton, content: {
            SingView(registrationButton: false)
        })
        .fullScreenCover(isPresented: $registrationButton, content: {
            SingView(registrationButton: true)
        })
        .fullScreenCover(isPresented: $skipButton, content: {
            HomeView(home: homeView, catalog: CatalogViewModel(catalog: CatalogModel(image: "", title: "")))
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
 
    }
}
