//
//  DCButton.swift
//  DreamCacher
//
//  Created by Jason D'Souza on 2024-01-05.
//

import SwiftUI

struct DCButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        
    }
}

struct DCButton_Previews: PreviewProvider {
    static var previews: some View {
        DCButton(title: "Value",
                 background: Color.pink) {
            // Action
        }
    }
}
