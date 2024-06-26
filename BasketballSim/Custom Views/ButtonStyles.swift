//
//  ButtonStyles.swift
//  BasketballSim
//
//  Created by Sean Allen on 11/6/22.
//

import SwiftUI

struct ActionButton: ButtonStyle {
    var color: Color = .blue
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .fontWeight(.semibold)
            .frame(width: 260, height: 44)
            .background(color.gradient)
            .foregroundColor(.white)
            .cornerRadius(8)
            .opacity(configuration.isPressed ? 0.75 : 1.0)
    }
}
