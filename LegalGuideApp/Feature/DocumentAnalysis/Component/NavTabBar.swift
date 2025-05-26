//
//  NavTabBar.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/8/25.
//

import SwiftUI

//MARK: - Tab enum 정의
enum Tab: Int, CaseIterable {
    case all, analysis, original
}

struct NavTabBar: View {
    @Binding  var isSelected: Tab
    //MARK: - 탭 버튼 뷰 빌더
    @ViewBuilder
    func tabButton(for tab: Tab) -> some View {
        let isCurrent = isSelected == tab

        Text(title(for: tab))
            .lineLimit(nil)
            .fixedSize(horizontal: true, vertical: false)
            .padding(.horizontal, 32)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(isCurrent ? Color.white : Color.clear)
            )
            .foregroundColor(isCurrent ? .blue : .black)
            .onTapGesture {
                withAnimation {
                    isSelected = tab
                }
            }
    }
    
    func title(for tab: Tab) -> String {
        switch tab {
        case .all: return "전체"
        case .analysis: return "번역 결과"
        case .original: return "원본"
        }
    }

    var body: some View {
        //MARK: - 전체 탭 바 스택
        VStack {
            HStack(alignment: .center, spacing: 40) {
                ForEach(Tab.allCases, id: \.self) { tab in
                    tabButton(for: tab)
                }
            }
            .frame(minHeight: 50)
            .background(Color(red: 0.95, green: 0.96, blue: 0.98))
            .cornerRadius(8)
        }
        
    }

    
    
    
}


#Preview {
    StatefulPreviewWrapper(Tab.all) { selected in
        NavTabBar(isSelected: selected)
    }
}
