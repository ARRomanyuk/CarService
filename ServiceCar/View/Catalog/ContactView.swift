//
//  ContactView.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI
import MapKit

struct ContactView: View {
    
    @StateObject var contact = ContactViewModel(contact: ContactModel(title: "", subTitle: ""))
    @State private var mapAction = false
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                
                TitleComponent(dismiss: _dismiss, title: "Контакти", subTitle: "")
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(contact.arrayContact ){item in
                            ContactComponent(title: item.title, subTitle: item.subTitle)
                        }
                    }
                    .modifier(CustomFrame())
                    .frame(width: rect.width)
    
                VStack {
                    Text("м.Харків")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    
                    Text("ул.Полтавський шлях, 79.")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                }
                .foregroundColor(Color("DarkGray"))
                
                NavigationLink(isActive: $mapAction, destination: {
                    mapBosheService()
                }, label: {
                    VStack {
                        Image("coordinate")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: rect.width - 48, height: 150)
                    }
                    .background(Color.white)
                    .cornerRadius(18)
                    .shadow(color: Color(.black).opacity(0.1), radius: 3, x: 8, y: 8 )
                })
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

struct mapBosheService: View {
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 49.98648647125999, longitude: 36.2027493387608),
                                           span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
    
    var body: some View {
    
        Map(coordinateRegion: $region)
            .cornerRadius(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        
    }
}
