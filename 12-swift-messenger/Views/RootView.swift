//
//  ContentView.swift
//  12-swift-messenger
//
//  Created by Liu Ziyi on 13/7/23.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .contacts 
    
    var body: some View {
        
        VStack {
            Text("Hello, world!")
                .padding()
                .font(Font.chatHeading)
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
