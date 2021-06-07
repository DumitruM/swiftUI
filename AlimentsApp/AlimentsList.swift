//
//  AlimentsList.swift
//  AlimentsApp
//
//  Created by mihai.dumitru on 01/04/2021.
//

import SwiftUI

struct AlimentsList: View {
    var body: some View {
        NavigationView {
            List(aliments) {
                currentAliment in
                NavigationLink(destination: AlimentDetail(aliment: currentAliment)) {
                    AlimentRow(aliment: currentAliment, color: .red).frame(height:80)
                }
            }.navigationBarTitle(Text("ALIMENTS"))
        }
    }
}

struct AlimentsList_Previews: PreviewProvider {
    static var previews: some View {
        AlimentsList()
    }
}
