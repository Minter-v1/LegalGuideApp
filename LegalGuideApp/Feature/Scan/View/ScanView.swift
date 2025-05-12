//
//  ScanView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

struct ScanView: View {
    @Binding var selectedTab: MainTabBar.Tab
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "chevron.left")
                    .font(.system(size: 18, weight: .semibold))
                Text("근로계약서 스캔")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            VStack(spacing: 24) {
                Text("근로계약서를 촬영하거나 파일을 업로드하세요.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                
                Text("개인정보는 자동으로 필터링됩니다.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                HStack(spacing: 16) {
                    ScanButton(title:"카메라", icon: "camera") {
                        // 카메라 버튼 액션
                    }
                    ScanButton(title: "업로드", icon: "square.and.arrow.up") {
                        // 업로드 버튼 액션
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 340)
            .background(Color(.systemGray6))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [6]))
                    .foregroundColor(.gray)
            )
            .cornerRadius(8)
            .padding(.horizontal, 16)
            .padding(.top, 16)
            
            Spacer()
            
            Text("촬영된 문서는 개인정보 보호를 위해 자동으로 필터링됩니다.\n번역 및 법률 정보 제공 목적으로만 사용됩니다.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .padding(.bottom, 12)
            
            MainTabBar(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    StatefulPreviewWrapper(MainTabBar.Tab.scan) { selectedTab in
        ScanView(selectedTab: selectedTab)
   }
}
