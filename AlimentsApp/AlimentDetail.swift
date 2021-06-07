//
//  ContentView.swift
//  AlimentsApp
//
//  Created by mihai.dumitru on 01/04/2021.
//

import SwiftUI

struct AlimentDetail: View {
    
    var aliment : Aliment
    
    @State var textfield: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
            Image(aliment.alimentType.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Image(aliment.imageName)
                .resizable().frame(width: 200, height: 200)
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle()
                .stroke(Color.white, lineWidth: 5))
                .offset(x:0, y: -90)
                .padding(.bottom, -70).shadow(radius: 15)
            Text(aliment.name).font(.system(size: 50))
                .fontWeight(.heavy)
            Divider()
                
                Text("asdasdasda")
                
//            TextField("Placeholder", text: $textfield)
            
            StatText(statName: "Proteins", statValue: aliment.proteins)
            StatText(statName: "Glucides", statValue: aliment.glucids)
            StatText(statName: "Lipides", statValue: aliment.lipids)
            }

            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        AlimentDetail(aliment: aliments[0])
//        AlimentsList()
        Group {
            AlimentDetail(aliment: aliments[2]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 8")
            AlimentDetail(aliment: aliments[2]).environment(\.sizeCategory, .extraSmall).previewDevice("iPhone 8")
            AlimentDetail(aliment: aliments[2]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 11 Max Pro")
            AlimentDetail(aliment: aliments[2]).environment(\.sizeCategory, .extraSmall).previewDevice("iPhone 11 Max Pro")
        }
    }
}
