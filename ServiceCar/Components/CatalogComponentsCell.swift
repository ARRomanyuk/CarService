//
//  CatalogComponentsCell.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct CatalogComponentsCell: View {
    
    var image: String
    var title: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 24, height: 24)
            
            Text(title)
                .font(.system(size: 16))
                .fontWeight(.medium)
        }
        .foregroundColor(Color("DarkGray"))
    }
}

struct CatalogComponentsCell_Previews: PreviewProvider {
    static var previews: some View {
        CatalogComponentsCell(image: "person.crop.circle", title: "Послуги")
    }
}
