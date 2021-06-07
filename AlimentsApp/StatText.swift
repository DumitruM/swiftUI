//
//  StatText.swift
//  AlimentsApp
//
//  Created by mihai.dumitru on 01/04/2021.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: Int
    
    var body: some View {
        HStack {
            Text(statName + ":").font(.system(size: 40)).fontWeight(.bold).padding(.leading, 30)
            Text(String(statValue)).font(.system(size: 40)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Proteins", statValue: 20)
    }
}
