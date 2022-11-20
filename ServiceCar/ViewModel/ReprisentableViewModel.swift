//
//  ReprisentableViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 23.10.2022.
//

import Foundation
import SwiftUI
 
class RepresentableViewModel: ObservableObject {
    
    @Published var selectImage = UIImage()
    @Published var selectProfile = false
    @Published var showPicker = false
    @Published var isCamera = false
    @Published var isPhotoLibrary = false
    
}


    
