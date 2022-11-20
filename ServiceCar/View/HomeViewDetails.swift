//
//  HomeViewDetails.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct HomeViewDetails: View {
    
    @ObservedObject var home: DetailViewModel
    
    var body: some View {
        VStack(spacing: 200){
            ScrollView {
                VStack {
                    ForEach(home.arrayCar, id:\.self){item in
                        Image(item)
                            .resizable()
                            .frame(height: 250)
                    }
                }
            }
           
            
            /*ScrollView {
               
                Image(home.detailModel.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: rect.width, height: 300)
                
                        VStack {
                            Text(home.detailModel.title)
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                                .lineSpacing(5)
                                .foregroundColor(Color("DarkGray"))
                                .padding()
                        }
                        .frame(width: rect.width)
                        .background(Color("BackGround"))
                        .cornerRadius(20)
                        .offset(y: -30)
                }*/
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewDetails(home: DetailViewModel(detail: HomeModel(image: "Pokraska", title: "Pokraska")))
    }
}
