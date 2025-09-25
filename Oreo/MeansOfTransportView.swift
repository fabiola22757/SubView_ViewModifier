//
//  MeansOfTransportView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct MeansOfTransportView: View {
    //variables
    @Binding var pressed: Bool
    
    var name: String
    var icon: String
    var index: Int
    
    @Binding var selectedIndex: Int
    
    //función al dar clic
    func labelPresionado() -> CGFloat{
        return pressed ? 180 : 0
    }
  
    var body: some View {
        
        VStack{
            Label(name, systemImage: icon)
                .modifier(CardViewModifier(bgColor: .transport))
                .rotationEffect(.degrees(labelPresionado()))
                .onTapGesture{
                    withAnimation(){
                        selectedIndex = index
                        self.pressed.toggle()
                    }
                }
            
            Text("Index seleccionado es \(selectedIndex)")
        }
        
    }
}

#Preview {
    MeansOfTransportView(pressed: .constant(false), name: "Automóvil", icon: "car", index: 0, selectedIndex: .constant(-1))
}
