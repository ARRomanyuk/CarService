//
//  PictureComponents.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct HomeDetailView: View {
    
    @Binding var model : HomeModel
    @Binding var hero : Bool
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            ScrollView (showsIndicators: false) {
                VStack(alignment: .leading, spacing: 16) {
                    Image(model.tapImage ? model.imageOne : model.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: model.tapImage ? rect.width : rect.width / 1.12, height: model.tapImage ? rect.height / 3 : rect.height / 5)
                        .cornerRadius(model.tapImage ? 0 : 18)
                        .shadow(color: .black.opacity(0.4), radius: 3, x: 3, y: 3)
                    
                    Text(model.title)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical,5)
                        .background(Color("Blue"))
                        .cornerRadius(50)
                        .opacity(model.tapImage ? 0 : 1)
                    
                    if model.tapImage {
                        
                        VStack(spacing: 24) {
                            Text(model.descriptionOne)
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color("DarkGray"))
                                .lineSpacing(5)
                                .padding(.horizontal)
                            
                            Image(model.imageTwo)
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width: rect.width, height: rect.width / 2)
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 4)
                            
                            Text(model.descriptionTwo)
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color("DarkGray"))
                                .lineSpacing(5)
                                .padding(.horizontal)
                            
                            if let one = model.arrayPic {
                                VStack(spacing: 0) {
                                    ForEach(one, id: \.self){item in
                                        Image(item)
                                            .resizable()
                                            .aspectRatio( contentMode: .fill)
                                            .frame(width: rect.width, height: rect.width )
                                    }
                                }
                            }
                        }
                        .offset(y: model.tapImage ? -30 : 0)
                        .frame(width: rect.width)
                    }
                }
                .frame(maxWidth: rect.width)
                .contentShape(Rectangle())
            }
            .frame(height: rect.height)
            
            if model.tapImage {
                Button(action: {
                    withAnimation(.linear(duration: 0.2)) {
                        model.tapImage.toggle()
                        hero.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.black.opacity(0.5))
                        .clipShape(Circle())
                    
                })
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.trailing)
            }
        }
    }
}

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailView(model: .constant(HomeModel(image: "Rihtovka",
                                                    title: "Рихтування",
                                                    description: "Rihtovka",
                                                    tapImage: false,
                                                    imageOne: "Rihtovka2",
                                                    imageTwo: "Rihtovka3",
                                                    descriptionOne: "Якщо автомобіль був сильно пошкоджений внаслідок аварії або падіння з висоти - буде потрібно відновлення геометрії кузова. Для такого складного кузовного ремонту автомобіль встановлюється на стапель для усунення перекосів та відновлення геометрії кузова згідно заводських креслень та міток.",
                                                    descriptionTwo: "Стапель фірми BLACK HAWK дозволяє виправляти пошкодження кузова автомобіля навіть після серйозних ДТП." )),
                          hero: .constant(false))
    }
}
