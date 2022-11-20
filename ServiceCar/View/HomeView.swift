//
//  HomeView.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var home : HomeViewModel
    @ObservedObject var catalog : CatalogViewModel
    
    @State var catalogButton = false
    @State var settingButton = false
    @State var hero = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                CatalogView(catalog: catalog)
                    .background(.ultraThinMaterial)
                
                VStack {
                    if !hero {
                        HStack {
                            Button(action:  {
                                
                                catalogButton.toggle()
                                
                            }, label: {
                                Image(systemName: "text.justify.left")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(Color("DarkGray"))
                            })
                                .padding(.leading, 16)
                                .offset(y: -12)
                            
                            
                            TextLabelView()
                            
                            NavigationLink(isActive: $settingButton, destination: {
                                ProfileView()
                            }, label: {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(Color("DarkGray"))
                            })
                                .padding(.trailing, 16)
                                .offset(y: -12)
                        }
                    }
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: -120) {
                            ForEach(0..<home.arrayHomeView.count){item in
                                GeometryReader {reader in
                                    HomeDetailView(model: $home.arrayHomeView[item], hero: $hero)
                                        .padding(.horizontal, home.arrayHomeView[item].tapImage ? 0 : 16)
                                        .onTapGesture {
                                            withAnimation(.linear(duration: 0.2)) {
                                                
                                                if !catalogButton {
                                                    if !home.arrayHomeView[item].tapImage {
                                                        home.arrayHomeView[item].tapImage.toggle()
                                                        self.hero.toggle()
                                                    }
                                                }
                                            }
                                        }
                                        .offset(y: home.arrayHomeView[item].tapImage ? -reader.frame(in: .global).minY : 0)
                                        .opacity(self.hero ? home.arrayHomeView[item].tapImage ? 1 : 0 : 1)
                                }
                            }
                        }
                        .frame(height: rect.height)
                    }
                    Spacer()
                }
                .background(Color("BackGround"))
                .edgesIgnoringSafeArea(.bottom)
                .offset(x: catalogButton ? 250 : 0)
                .rotationEffect(.degrees(catalogButton ? -10 : 0))
                .animation(.linear(duration: 0.2), value: catalogButton)
                .navigationBarHidden(true)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView(home: HomeViewModel(home: HomeModel(image: "", title: "", description: "", tapImage: false, imageOne: "", imageTwo: "", descriptionOne: "", descriptionTwo: "")), catalog: CatalogViewModel(catalog: CatalogModel(image: "cart", title: "cart")))
            .preferredColorScheme(.light)
            
    }
}

