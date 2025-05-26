//
//  MainTabBar.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//



import SwiftUI

//MARK: - 탭 enum 선언
enum AppTab: CaseIterable, Hashable {
    case home, myDocument, scan, lawInfo, myInfo
    
    var icon: String {
        switch self {
        case .home: return "house"
        case .myDocument: return "doc.text"
        case .scan: return "camera"
        case .lawInfo: return "book"
        case .myInfo: return "person"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "홈"
        case .myDocument: return "내 문서"
        case .scan: return "스캔"
        case .lawInfo: return "법률 정보"
        case .myInfo: return "내 정보"
        }
    }
}




struct MainTabBar: View {
    //데이터 주입 - 현재 선택된 탭
    @Binding var selectedTab: AppTab
    
    //MARK: - 탭 버튼 구성
    @ViewBuilder
    private func tabItem(for tab: AppTab) -> some View {
        
        Button {selectedTab = tab} label : {
        VStack(alignment: .center, spacing: 0) {
                Image(systemName: tab.icon)
                    .resizable()
                    .frame(width: 23, height: 20)
                    .padding(.bottom, 7)
            
                Text(tab.title)
                    .font(.custom("Inter", size: 12))
                    .fixedSize(horizontal: true, vertical: false)
        }
        .foregroundColor(selectedTab == tab ? .blue : Color(red: 0.39, green: 0.45, blue: 0.55))
    }
        .buttonStyle(.plain)
        
    }
    
    var body: some View {
        //MARK: - 전체 뷰
        VStack(alignment: .center, spacing: 0) {
            
            //MARK: - 구분선
            Rectangle()
                .fill(Color(red: 0.39, green: 0.45, blue: 0.55))
                .frame(height: 1)
                            
            
            //MARK: - 버튼
            VStack {
                HStack(alignment:.center, spacing: 10) {
                    ForEach(AppTab.allCases , id: \.self) { tab in
                        tabItem(for: tab)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color(.white))
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        
    }
}










#Preview {
    StatefulPreviewWrapper(AppTab.home) { selectedTab in
        MainTabBar(selectedTab: selectedTab)
    }
}

