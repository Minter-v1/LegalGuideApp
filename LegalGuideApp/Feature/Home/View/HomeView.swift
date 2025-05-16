//
//  HomeView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

//MARK: - HomeView 
struct HomeView: View {
    @Binding var selectedTab : MainTabBar.Tab
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                ZStack {
                    HStack {
                        Image(systemName: "building.columns")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                        HStack(spacing: 16) {
                            Image(systemName: "person")
                            Image(systemName: "line.horizontal.3")
                        }
                    }
                    .padding(.horizontal)
                    
                    Text("LegalGuide")
                        .font(.headline)
                        .bold()
                }
                
                Divider()
                    .frame(height: 0.7)
                    .background(Color(red: 0.39, green: 0.45, blue: 0.55))
                
                Text("안녕하세요, 홍길동님") // TODO : 실제 사용자 이름 받아서 출력
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)
                
                VStack(spacing: 15) {
                    NavigationLink(destination: MyDocumentView()) {
                        HomeCardView(icon: "doc.text", title: "내 기록 보기", description: "저장된 문서와 번역 기록을 확인하세요")
                    }
                    
                    .buttonStyle(.plain)
                    NavigationLink(destination: ScanView(selectedTab: $selectedTab)) {
                        HomeCardView(icon: "camera", title: "OCR 찍기", description: "근로계약서를 촬영하여 번역 및 분석하세요")
                    }
                    .buttonStyle(.plain)
                    NavigationLink(destination: LawInfoView()) {
                        HomeCardView(icon: "book", title: "법률 정보 보기", description: "외국인 근로자 관련 법률 정보를 확인하세요")
                    }
                    .buttonStyle(.plain)
                }
                .padding(.horizontal, 14)
                
                Spacer()
                
                MainTabBar(selectedTab: $selectedTab)
                
            }
            .padding(.top)
        }
    }
}


#Preview {
    StatefulPreviewWrapper(MainTabBar.Tab.home) { selectedTab in
        HomeView(selectedTab: selectedTab)
    }
}
