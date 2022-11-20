//
//  ImageProfileComponent.swift
//  ServiceCar
//
//  Created by ARomanuk on 23.10.2022.
//

import SwiftUI

struct ImageProfileComponent: View {
    
    @EnvironmentObject var imagePicker : RepresentableViewModel
    
    var body: some View {
        VStack {
            Button(action: {
                imagePicker.selectProfile = true
                imagePicker.showPicker.toggle()
            }, label: {
                
                if imagePicker.selectProfile {
                    Image(uiImage: imagePicker.selectImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                        .shadow(color: .gray, radius: 2, x: 3, y: 3)
                } else {
                    Image(systemName: "person.fill.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75, height: 75)
                        .cornerRadius(20)
                        .foregroundColor(Color("Gray").opacity(0.6))
                }
            })
                .confirmationDialog("", isPresented: $imagePicker.showPicker, actions: {
                    Button(action: {
                        imagePicker.isCamera.toggle()
                    }, label: {
                        Text("Зробити фото")
                    })
                    Button(action: {
                        imagePicker.isPhotoLibrary.toggle()
                    }, label: {
                        Text("Вибрати з галереї")
                    })
                })
                .sheet(isPresented: $imagePicker.isCamera, content: {
                    ImagePicker(picker: imagePicker, source: .camera)
                })
                .sheet(isPresented: $imagePicker.isPhotoLibrary, content: {
                    ImagePicker(picker: imagePicker, source: .photoLibrary)
                })
        }
    }
}

struct ImageProfileComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageProfileComponent()
    }
}
