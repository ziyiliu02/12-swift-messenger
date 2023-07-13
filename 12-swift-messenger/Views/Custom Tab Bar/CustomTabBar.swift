//
//  CustomTabBar.swift
//  12-swift-messenger
//
//  Created by Liu Ziyi on 13/7/23.
//

import SwiftUI

enum Tabs: Int {
    case chats = 0
    case contacts = 1
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            // Chats
            Button {
                // Switch to chats
                selectedTab = .chats
            } label: {
                
                GeometryReader { geo in
                    
                    if selectedTab == .chats {
                        
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: geo.size.width/2, height: 4)
                            .padding(.leading, geo.size.width/4)
                        
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: "bubble.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text("Chats")
                            .font(Font.tabBar)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    
                }
                
            }
            .tint(Color("icons-secondary"))
            
            // New Chat
            Button {
                
            } label: {
                
                VStack(alignment: .center, spacing: 4) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                    
                    Text("New Chat")
                        .font(Font.tabBar)
                }
                
            }
            .tint(Color("icons-primary"))
            
            // Contacts
            Button {
                // Switch to contacts
                selectedTab = .contacts
            } label: {
                
                GeometryReader { geo in
                    
                    if selectedTab == .contacts {
                        
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: geo.size.width/2, height: 4)
                            .padding(.leading, geo.size.width/4)
                        
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text("Contacts")
                            .font(Font.tabBar)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    
                }
                
            }
            .tint(Color("icons-secondary"))

            
        }
        .frame(height: 82)
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.contacts))
    }
}
