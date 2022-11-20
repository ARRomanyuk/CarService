//
//  ServiceCarApp.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI
import FirebaseCore

var rect = UIScreen.main.bounds

@main
struct ServiceCarApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            
            if AuthView.shared.currentUser != nil {
                HomeView(home: HomeViewModel(home: HomeModel(image: "", title: "", description: "", tapImage: false, imageOne: "", imageTwo: "", descriptionOne: "", descriptionTwo: "")), catalog: CatalogViewModel(catalog: CatalogModel(image: "", title: "")))
            } else {
                ContentView()
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      print("Gooooo!!!")
    return true
  }
}
