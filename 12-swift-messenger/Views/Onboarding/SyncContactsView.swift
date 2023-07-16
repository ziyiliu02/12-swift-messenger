//
//  SyncContactsView.swift
//  12-swift-messenger
//
//  Created by Liu Ziyi on 14/7/23.
//

import SwiftUI

struct SyncContactsView: View {
    
    @Binding var isOnboarding: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("onboarding-all-set")
            
            Text("Awesome!")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Continue to start chatting with your friends")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            Spacer()
            
            Button {
                // Next step
                isOnboarding = false
                
            } label: {
                
                Text("Continue")
                
            }
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
            
        }
        .padding(.horizontal)
        
    }
}

struct SyncContactsView_Previews: PreviewProvider {
    static var previews: some View {
        SyncContactsView(isOnboarding: .constant(true))
    }
}
