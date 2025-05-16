//
//  MainTabBar.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

struct MainTabBar: View {
    @Binding var selectedTab: Tab
    
    enum Tab {
        case home
        case myDocument
        case scan
        case lawInfo
        case myInfo
    }
    
    var body: some View {
        HStack {
            tabItem(icon: "house", title: "홈", tab: .home)
            Spacer()
            tabItem(icon: "document", title: "내 문서", tab: .myDocument)
            Spacer()
            tabItem(icon: "camera", title: "스캔", tab: .scan)
            Spacer()
            tabItem(icon: "book", title: "법률 정보", tab: .lawInfo)
            Spacer()
            tabItem(icon: "person", title: "내 정보", tab: .myInfo)
        }
        .padding()
        .background(Color.white)
        
        .overlay(
            VStack {
                Divider()
                    .frame(height: 0.7)
                    .background(Color(red: 0.39, green: 0.45, blue: 0.55))
                
                Spacer()
            }
        )
    }
    private func tabItem(icon: String, title: String, tab: Tab) -> some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 20))
            Text(title)
                .font(.caption)
        }
        .foregroundColor(selectedTab == tab ? .blue : .gray)
        .onTapGesture {
            selectedTab = tab
        }
    }
}

#Preview {
    StatefulPreviewWrapper(MainTabBar.Tab.home) { selectedTab in
        MainTabBar(selectedTab: selectedTab)
    }
}

