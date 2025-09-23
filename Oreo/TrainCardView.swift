//
//  TrainCardView.swift
//  Oreo
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct TrainCardView: View {
    //variables
    var iconName: String
    var iconColor: Color
    
    var body: some View {
        VStack(){
            
            HStack(){
                Spacer()
                
                Text("Oferta")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame( maxWidth: .infinity, alignment: .trailing)
                
            }
            
            Image(systemName: "tram.circle.fill")
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit )
                .frame(width: 120, height: 100)
            
            Text(iconName)
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle) //cuando el texto está muy largo y tiene el LineLimit se pondrá ... en medio del texto
                .padding(.bottom)
                .frame( maxWidth: .infinity)
        }
        .modifier(CardViewModifier())
        
    }
}

#Preview {
    TrainCardView(iconName: "Tren Bala Hikari", iconColor: Color.green)
}
