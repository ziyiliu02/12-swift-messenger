//
//  OnboardingContainerView.swift
//  12-swift-messenger
//
//  Created by Liu Ziyi on 14/7/23.
//

import SwiftUI

enum OnboardingStep: Int {
    
    case welcome = 0
    case phonenumber = 1
    case verification = 2
    case profile = 3
    case contacts = 4
    
}

struct OnboardingContainerView: View {
    
    @Binding var isOnboarding: Bool
    
    @State var currentStep: OnboardingStep = .welcome
    
    var body: some View {
        
        ZStack {
            
            Color("background")
                .ignoresSafeArea(edges: [.top, .bottom])
            
            switch currentStep {
            case .welcome:
                WelcomeView(currentStep: $currentStep)
            case .phonenumber:
                PhoneNumberView(currentStep: $currentStep)
            case .verification:
                VerificationView(currentStep: $currentStep)
            case .profile:
                CreateProfileView(currentStep: $currentStep)
            case .contacts:
                SyncContactsView(isOnboarding: $isOnboarding)
            }
            
        }
        
    }
}

struct OnboardingContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContainerView(isOnboarding: .constant(true))
    }
}
