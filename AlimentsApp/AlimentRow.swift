//
//  AlimentRow.swift
//  AlimentsApp
//
//  Created by mihai.dumitru on 01/04/2021.
//

import SwiftUI

struct AlimentRow: View {
    
    var aliment: Aliment
    var color: Color
    
    var body: some View {
        HStack {
            Image(aliment.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .center)
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(aliment.alimentType.color))
            Text(aliment.name).font(.largeTitle)
                
            Spacer()
        }.background(color)
    }
}

struct AlimentRow_Previews: PreviewProvider {
    static var previews: some View {
        AlimentRow(aliment: aliments[0], color: .red).previewLayout(.fixed(width: 500, height: 100))
    }
}
