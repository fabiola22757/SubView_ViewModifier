//
//  MeansOfTransportView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct MeansOfTransportView: View {
    //variables
    var name: String = "Automóvil"
    var icon: String = "car"
    //variable para botón
    @State var pressed: Bool = false
    
    //función al dar clic
    func labelPresionado() -> CGFloat{
        return pressed ? 180 : 0
    }
  
    var body: some View {
        
        Label(name, systemImage: icon)
            .modifier(CardViewModifier(bgColor: .transport))
            .rotationEffect(.degrees(labelPresionado()))
            .onTapGesture{
                withAnimation(){
                    self.pressed.toggle()
                }
            }
        
    }
}

#Preview {
    MeansOfTransportView()
}
