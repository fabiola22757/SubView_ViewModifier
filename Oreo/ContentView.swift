//
//  ContentView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                TrainCardView(iconName: "Tren Maya", iconColor: .green)
                TrainCardView(iconName: "Tren La Pinta", iconColor: .cyan)
                TrainCardView(iconName: "Tren La Niña", iconColor: .yellow)
                TrainCardView(iconName: "Tren Canela", iconColor: .pink)
                TrainCardView(iconName: "Tren Polo Norte", iconColor: .purple)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
