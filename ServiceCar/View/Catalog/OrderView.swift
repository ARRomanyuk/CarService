//
//  OrderView.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct OrderView: View {
    
    @ObservedObject var order : OrderViewModel
    
    @State private var cancelButton = false
    @State private var alertMessage = ""
    @State private var showAlert = false
    @State private var sign = false
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                
                TitleComponent(title: "Мій ремонт", subTitle: "")
                   
                VStack(spacing: 30) {
                    VStack {
                        List(order.arrayPosition) {item in
                            HStack(spacing:5) {
                                Text(item.title)
                                    .font(.system(size: 16).weight(.medium))
                    
                                Spacer()
                                
                                Text("\(item.cost) грн")
                                    .font(.system(size: 18).weight(.bold))
                                    
                            }
                            .foregroundColor(Color("DarkGray"))
                            .swipeActions {
                                Button(action: {
                                        OrderViewModel.shared.arrayPosition.removeAll(where: {new in
                                            item.id == new.id
                                    })
                                    
                                }, label: {
                                    Image(systemName:"trash")
                                })
                                    .tint(.red)
                            }
                        }
                        .onAppear(perform: {
                            UITableView.appearance().backgroundColor = .clear
                        })
                    }
                    .modifier(CustomFrame())
                    
                    HStack {
                        HStack {
                            Text("Сума:")
                                .font(.system(size: 24).bold())
                                .foregroundColor(Color("DarkGray"))
                            
                            Spacer()
                            
                            Text("\(OrderViewModel.shared.sum) грн")
                                .font(.system(size: 24).bold())
                                .foregroundColor(Color("Blue"))
                        }
                        .padding(.horizontal)
                    }
                    .modifier(CustomFrame())
                    
                    Button(action: {
                        if let user = AuthView.shared.currentUser?.uid {
                            print("Завмовsти ремонт \(user)")
                        } else {
                            alertMessage = "Увійдіть до свого акаунту чи зарееструтеся"
                            showAlert.toggle()
                        }
                    }, label: {
                        Text("Замовити ремонт")
                            .modifier(ButtonComponent())
                    })
                    
                    Button(action: {
                        cancelButton.toggle()
                        
                        OrderViewModel.shared.arrayPosition.removeAll()
                        
                    }, label: {
                        Text("Відмінити?")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkGray"))
                    })
                }
                .offset(y: -25)
            }
            .alert(self.alertMessage, isPresented: $showAlert, actions: {
                Button(action: {
                    sign.toggle()
                }, label: {
                    Text("Oк")
                })
                
                Button(action: {
                    
                }, label: {
                    Text("Відмінити")
                })
            })
            .fullScreenCover(isPresented: $sign, content: {
                MainView()
            })
            .fullScreenCover(isPresented: $cancelButton, content: {
                HomeView(home: HomeViewModel(home: HomeModel(image: "", title: "", description: "", tapImage: false, imageOne: "", imageTwo: "", descriptionOne: "", descriptionTwo: "")), catalog: CatalogViewModel(catalog: CatalogModel(image: "", title: "")))
        })
            
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(order: OrderViewModel.shared)
    }
}

