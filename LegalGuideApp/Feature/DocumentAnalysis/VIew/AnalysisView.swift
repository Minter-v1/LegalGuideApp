//
//  AnalysisView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/10/25.
//

import SwiftUI

struct AnalysisView: View {
    @State private var isSelected: Bool = false
    @State private var isShowedAnalysis: Bool = false
    
    var body: some View {
        //FIX: NavigationStack 위치 조정 -> 번역 결과 조회 페이지 이전 페이지와 연결 필요
        NavigationStack {
            //MARK: - NavigationLink
            NavigationLink(
                destination: IntroView(), //FIX: - 이동 뷰 수정
                isActive: $isSelected
            ) { EmptyView() }
            
            NavigationLink (
                destination: AnalysisDocumentView(),
                isActive:  $isShowedAnalysis
            ) { EmptyView() }
            
            //MARK: - 전체 화면 뷰
            VStack(alignment: .center, spacing: 0) {
                
                //MARK: - 상단 Navigation
                HStack(alignment: .center, spacing: 120) {
                    Button(action: { isSelected = true } ) {
                        Image(systemName:"arrowshape.left") //NOTE: - 아이콘 변경
                            .foregroundColor(.black)
                    }
                    .padding(.leading, 16)
                    Text("번역 결과")
                    
                }
                .padding(.top, 24)
                .padding(.leading, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                //MARK: - 구분선
                Divider()
                    .frame(height: 1)
                    .background(Color.black)
                    .padding(.top, 16)
                
    
                //MARK: - 메인 콘텐츠 뷰
                VStack(alignment: .center, spacing: 0) {
                    
                    //MARK: - Navigation top bar
                    //FIX: padding 안먹는 오류 슈정
                    NavTabBar()
                        .frame(maxWidth: .infinity)
                    
                    
                    //MARK: - Image Box
                    //FIX: padding 안먹는 오류 슈정
                    ImageBox()
                        .padding(.top, 20)
                        .frame(maxWidth: .infinity)
                    
                    
                    
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
                .padding(.horizontal, 16)
                
                
                Spacer()
                
                //NOTE: - 하단 Navigation bottom bar 삽입
            }
            .background(.white)}
           
        }
       
    }


#Preview {
    AnalysisView()
}
