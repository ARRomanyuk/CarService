//
//  TextFieldCell.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct TextFieldCell: View {
    @Binding var textField: String
    
    var textFieldHead: String
    var image: String?
       
    var body: some View {
        VStack {
            HStack(spacing: 18) {
                Image(systemName: image ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color("DarkGray"))
                
                TextField(text: $textField, prompt: Text("\(textFieldHead)"), label: {
                    Text("")
                })
            }
            .padding(.leading, 16)
            
           Divider()
                .padding(.horizontal)
        }
    }
}

struct SecureFieldCell: View {
    
    @Binding var textField: String
    
    @State var image: String
    @State var textFieldHead: String
   
    
    var body: some View {
        VStack {
            HStack(spacing: 18) {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color("DarkGray"))
                
                SecureField(text: $textField, prompt: Text("\(textFieldHead)"), label: {
                    Text("")
                })
                
            }
            .padding(.leading, 16)
            
            Divider()
                 .padding(.horizontal)
        }
    }
}
