//
//  DetailHomeViewComponents.swift
//  ServiceCar
//
//  Created by ARomanuk on 15.10.2022.
//

import SwiftUI

struct DetailHomeViewComponents: View {
    
    var home: HomeModel
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: true, content: {
                
                    Image(home.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: rect.width, height: rect.width / 1.2)
                        .cornerRadius(30)
                        .offset(y: -10)
                
            })
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetailHomeViewComponents_Previews: PreviewProvider {
    static var previews: some View {
        DetailHomeViewComponents(home:  HomeModel (image: "MB", title: ""))
    }
}
