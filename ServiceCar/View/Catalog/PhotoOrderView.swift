//
//  PhotoOrderView.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct PhotoOrderView: View {
    
    @State var cameraButton = false
    @ObservedObject var imagePicker : RepresentableViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            
            TitleComponent(title: "Оцінити за фото", subTitle: "Відправте фото пошкодження та отримайте рахунок ремонту")
            
            Button(action: {
                imagePicker.selectProfile = true
                imagePicker.showPicker.toggle()
            }, label: {
                if imagePicker.selectProfile {
                    Image(uiImage: imagePicker.selectImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: rect.width - 48, height: rect.width - 48)
                        .shadow(color: .gray, radius: 2, x: 3, y: 3)
                } else {
                    Image(systemName: "camera")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color("Gray"))
                }
            })
                .padding(.vertical, 24)
                .frame(width: rect.width - 48, height: rect.width - 48)
                .background(Color.white)
                .cornerRadius(18)
                .shadow(color: Color(.black).opacity(0.1), radius: 3, x: 8, y: 8 )
                
            
            Button(action: {
                print("Відправити")
            }, label: {
                Text("Відправити")
                    .modifier(ButtonComponent())
            })
            
            Spacer()
        }
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

struct PhotoOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoOrderView(imagePicker: RepresentableViewModel())
    }
}
