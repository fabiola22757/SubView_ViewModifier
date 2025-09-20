//
//  MeansOfTransportView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct MeansOfTransportView: View {
    //variables
    var name: String
    var icon: String
  
    var body: some View {
        
        Label(name, systemImage: icon)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2)
            ).padding()
        
    }
}

#Preview {
    MeansOfTransportView(name: "Medio de Transporte", icon: "car")
}
