//
//  AnalysisContainerView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/24/25.
//

import SwiftUI

struct AnalysisContainerView: View {
    @State private var isSelected: Bool = false
    @State private var isShowedAnalysis: Bool = false
    @State private var selectedTab: Tab = .all //탭 상태 추적(전체/번역결과/원본)
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationLink(destination: LawAnalysisView(), isActive: $isShowedAnalysis) {
            EmptyView()
        }
            //MARK: - 전체 화면 뷰
            VStack(alignment: .center, spacing: 0) {
                
                //MARK: - 상단 Navigation
                HeaderView(pageName: "번역 결과") { dismiss() }
            
            
                
                
                
                //MARK: - 메인 콘텐츠 뷰
                VStack(alignment: .center, spacing: 0) {
                    
                    //MARK: - Navigation top bar
                    //FIXME: padding 안먹는 오류 슈정
                    NavTabBar(isSelected: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                    

                    //MARK: - 탭별 콘텐츠 전환
                   
                    Group {
                        switch selectedTab {
                        case .all:
                            TranslationResultAllView()
                        case .analysis:
                                TranslationResultView()
                                .padding(.top, 20)
                        case .original:
                            //FIXME: - 원본보기 페이지 삽입
                            Text("여기에 원본 보기 뷰 삽입")
                        }
                            
                    }
                    
                  
                    
                       
                       
                      
                    
                    
                    //MARK: - (btn)저장/공유
                    HStack(alignment: .center, spacing: 160) {
                        DefaultButton(text: "저장하기", buttonColor:.white, textColor: .black)
                        DefaultButton(text: "공유하기", buttonColor:.white, textColor: .black)
                    }
                    .padding(.top, 30)
                    
                    //MARK: - (btn) 법률 분석 보기
                    DefaultButton(text:"법류 분석 보기") {
                        isShowedAnalysis = true
                    }
                    .padding(.top, 30)
                    
                    
                    
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                
                
                
                Spacer()
                
                //NOTE: - 하단 Navigation bottom bar 삽입
            }
            .navigationBarBackButtonHidden(true)
            .background(.white)
        }

            
        
           
        
}

#Preview {
    AnalysisContainerView()
}
