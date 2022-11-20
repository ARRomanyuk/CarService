//
//  CatalogView.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI
import FirebaseAuth

struct CatalogView: View {
    
    @ObservedObject var catalog: CatalogViewModel
    
    @State var singOutButton = false
    @State var avatarButton = false
    @State var serviceButton = false
    @State var sparesBUtton = false
    @State var photoButton = false
    @State var orderButton = false
    @State var contactButton = false
    @State var infoButton = false
    @State var singIn = false
    
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 30) {
                VStack(alignment:.leading) {
                    
                    ImageProfileComponent()
                    
                    Text("Привіт!")
                        .fontWeight(.bold)
                    
                    Text("Друже")
                        .fontWeight(.bold)
                    
                }
                .font(.system(size: 24))
                .foregroundColor(Color("DarkGray"))
                
                
                VStack(alignment: .leading, spacing: 24) {
                    ForEach(catalog.arrayCatalog){item in
                        Button(action: {
                            
                            switch item.title {
                            case "Послуги" : serviceButton.toggle()
                            case "Запчастини" : sparesBUtton.toggle()
                            case "Порохування за фото" : photoButton.toggle()
                            case "Кошик" : orderButton.toggle()
                            case "Контакти" : contactButton.toggle()
                            case "Про нас" : infoButton.toggle()
                            default:
                                break
                            }
                            
                        }, label: {
                            CatalogComponentsCell(image: item.image, title: item.title)
                        })
                    }
                }
                
                Rectangle()
                    .frame(width: 200, height: 2)
                    .foregroundColor(Color("Gray"))
                
                Spacer()
                
                Button(action: {
                    
                    if AuthView.shared.currentUser != nil {
                        do {
                            try Auth.auth().signOut()
                            singOutButton.toggle()
                        } catch {
                            print(error.localizedDescription)
                        }
                    } else {
                        singIn.toggle()
                    }
                
                }, label: {
                    
                    if AuthView.shared.currentUser != nil {
                        CatalogComponentsCell(image: "arrowshape.turn.up.backward", title: "Вихід")
                    } else {
                        CatalogComponentsCell(image: "arrowshape.turn.up.right", title: "Вхід")
                    }
                    
                    
                })
                    .padding(.bottom, rect.minY + 16)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(.leading, 16)
            .padding(.top, 30)
            .fullScreenCover(isPresented: $singOutButton, content: {
                MainView()
        })
            .fullScreenCover(isPresented: $serviceButton, content: {
                ServiceView(service: ServiceViewModel(service: ServiceModel(title: "")))
        })
            .fullScreenCover(isPresented: $sparesBUtton, content: {
                SparesView()
        })
            .fullScreenCover(isPresented: $photoButton, content: {
                PhotoOrderView(imagePicker: RepresentableViewModel())
        })
            .fullScreenCover(isPresented: $orderButton, content: {
                OrderView(order: OrderViewModel.shared)
        })
            .fullScreenCover(isPresented: $contactButton, content: {
                ContactView()
        })
            .fullScreenCover(isPresented: $infoButton, content: {
                InfoView()
        })
            .fullScreenCover(isPresented: $singIn, content: {
                SingView()
            })
            .environmentObject(RepresentableViewModel())
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(catalog: CatalogViewModel(catalog: CatalogModel(image: "person", title: "Contacts")))
    }
}


