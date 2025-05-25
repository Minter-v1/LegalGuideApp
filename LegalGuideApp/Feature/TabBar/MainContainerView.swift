//
//  MainContainerView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/22/25.
//

//DESCRIPTION: 텝 상태 관리 및 화면 전환관리

import SwiftUI

struct MainContainerView: View {
    @State private var selectedTab: AppTab = .home //default 위치 설정
    
    //MARK: - 뷰 스위쳐(해당 뷰 빌더가 뷰를 바꿔주고 있음!)
    @ViewBuilder
    private func currentTabView()  -> some View{
        //selectedTab 상태 추적
        switch selectedTab {
        case .home:
            HomeView(selectedTab: $selectedTab)
        case .myDocument:
//            EmptyView()
            MyDocumentView(selectedTab: $selectedTab)
        case .scan:
            //FIXME: - 뷰 연결 수정
            ScanView(selectedTab: $selectedTab)
        case .lawInfo:
            //FIXME: - 뷰 연결 수정
            EmptyView()
        case .myInfo:
            //FIXME: -뷰 연결 수정
            EmptyView()
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - 컨텐츠 영역
            currentTabView()
                .frame(maxWidth: .infinity)
                
            Spacer()
            //MARK: - 하단 탭 바
            MainTabBar(selectedTab: $selectedTab)
                .padding(.top,0)
        }
        .background(.white)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack {
        MainContainerView()
    }
    
}
