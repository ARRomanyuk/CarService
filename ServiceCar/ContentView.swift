//
//  ContentView.swift
//  ServiceCar
//
//  Created by ARomanuk on 27.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startPage = true
    
    var body: some View {
        VStack {
            
            if startPage {
                VStack {
                    Image("TechnoLak")
                        .resizable()
                        .aspectRatio( contentMode: .fill)
                        .frame(width: 500, height: 250)
                        .padding(.leading, 20)
                }
                .frame(width: rect.width)
                .animation(.linear(duration: 0.1), value: startPage)
            } else {
                    MainView()
            }
            
        }
        .animation(.linear(duration: 0.2), value: startPage)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                startPage.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

