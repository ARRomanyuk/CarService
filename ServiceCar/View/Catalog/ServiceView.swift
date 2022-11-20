//
//  ServiceView.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

struct ServiceView: View {
    
    @Environment (\.dismiss) var dismiss
    
    @ObservedObject var service: ServiceViewModel
    
    @State var wing = false
    @State var door = false
    @State var bumper = false
    @State var hood = false
    @State var trunk = false
    @State var roof = false
    @State var openDoor = false
    @State var other = false
    
    var body: some View {
        
            VStack(spacing: 10) {
                
                TitleComponent(dismiss: _dismiss, title: "Послуги ремонта", subTitle: "")
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(service.arrayService) {item in
                        Button(action: {
                         
                            switch item.title {
                            case "Крилья": wing.toggle()
                            case "Двері": door.toggle()
                            case "Бампера": bumper.toggle()
                            case "Капот": hood.toggle()
                            case "Дах": roof.toggle()
                            case "Багажник": trunk.toggle()
                            case "Пройоми та короба": openDoor.toggle()
                            case "Інші послуги": other.toggle()
                            
                            default:
                                break
                            }
                            
                        }, label: {
                            Text(item.title)
                                .foregroundColor(Color("DarkGray"))
                                .modifier(CustomFrame())
                                .frame(width: rect.width)
                        })
                    }
                }
                Spacer()
            }
            .fullScreenCover(isPresented: $wing) {CarWings(wings: CarWingsViewModel())}
            .fullScreenCover(isPresented: $door) {CarDoorView(door: CarDoorViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
            .fullScreenCover(isPresented: $bumper) {CarBumperView(bumper: CarBumperViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
            .fullScreenCover(isPresented: $hood) {CarHoodView(hood: CarHoodViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
            .fullScreenCover(isPresented: $trunk) {CarTrunkView(trunk: CarTrunkViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
            .fullScreenCover(isPresented: $roof) {CarRoofView(roof: CarRoofViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
            .fullScreenCover(isPresented: $openDoor) {CarOpenDoorView(openDoor: CarOpenDoorViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
            .fullScreenCover(isPresented: $other) {OtherView(other: OtherViewModel(detail: DetailServiceModel(title: "", cost: 0, checked: false)))}
    }
}

struct ServiceView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceView(service: ServiceViewModel(service: ServiceModel(title: "Крило")))
    }
}

