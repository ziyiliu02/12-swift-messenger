//
//  CreateProfileTextfieldStyle.swift
//  12-swift-messenger
//
//  Created by Liu Ziyi on 16/7/23.
//

import Foundation
import SwiftUI

struct CreateProfileTextfieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("input"))
                .cornerRadius(8)
                .frame(height: 46)
            
            // This references the textfield 
            configuration
                .font(Font.tabBar)
                .padding()
        }
        
    }
    
}
