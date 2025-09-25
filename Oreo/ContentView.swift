//
//  ContentView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    //variables
    @State var cardSeleccionada: Int = -1
    @State var pressedPadre: Bool = false
    
    var body: some View {
        ScrollView{
            ///
            Text("Content View \(cardSeleccionada)")
            ScrollView(.horizontal){
                HStack{
                    MeansOfTransportView(pressed: $pressedPadre, name: "Avión", icon: "airplane", index: 0, selectedIndex: $cardSeleccionada)
                    MeansOfTransportView(pressed: $pressedPadre, name: "Auto", icon: "car", index: 1, selectedIndex: $cardSeleccionada)
                    MeansOfTransportView(pressed: $pressedPadre, name: "Autobus", icon: "bus", index: 2, selectedIndex: $cardSeleccionada)
                    MeansOfTransportView(pressed: $pressedPadre, name: "Bote", icon: "sailboat", index: 3, selectedIndex: $cardSeleccionada)
                }
            }
            ///
            
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
}

#Preview {
    ContentView()
}
