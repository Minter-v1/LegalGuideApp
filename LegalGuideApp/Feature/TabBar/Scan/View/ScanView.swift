//
//  ScanView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

struct ScanView: View {
    @Binding var selectedTab: AppTab
    @State var isMoveView: Bool = false
    
    var body: some View {
        ZStack {
            //MARK: - 법률 분석 결과 페이지 이동
            NavigationLink(
                destination: AnalysisContainerView(),
                isActive: $isMoveView
            ) { EmptyView() }
            
            VStack {
                VStack() {
                    HeaderView(pageName:"LegalGuide") { selectedTab = .home }
                } .padding(.bottom, 30).padding(.top,0)
                
                //MARK: - 메인 콘텐츠 영역
                VStack(alignment: .center, spacing: 0) {
                    
                    VStack(spacing: 10) {
                        //MARK: - 텍스트 섹션
                        VStack {
                            Text("근로계약서를 촬영하거나 파일을 업로드하세요.")
                                .font(.body)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                            
                            Text("개인정보는 자동으로 필터링됩니다.")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        .padding(.top, 160)
                        
                        
                        //MARK: - 카메라/업로드 버튼 섹션
                        HStack(spacing: 16) {
                            ScanButton(title:"카메라", icon: "camera") { isMoveView = true }
                            ScanButton(title: "업로드", icon: "square.and.arrow.up") {}
                        }
                        .padding(.top, 100)
                    }
                    .frame(maxWidth: .infinity, minHeight: 500)
                    .background(.gray.opacity(0.1))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [6]))
                            .foregroundColor(.gray)
                    )
                    .cornerRadius(8)
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
                
                
                
                //MARK: - (footer) 안내 문구
                Text("촬영된 문서는 개인정보 보호를 위해 자동으로 필터링됩니다.\n번역 및 법률 정보 제공 목적으로만 사용됩니다.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 12)
                
            }
        }
        .background(.white)
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    StatefulPreviewWrapper(AppTab.scan) { binding in
        NavigationStack {
            ScanView(selectedTab: binding)
        }
    }
}

