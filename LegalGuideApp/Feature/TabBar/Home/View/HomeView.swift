//
//  HomeView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/22/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @Binding var selectedTab: AppTab
    
    
    
    //MARK: - 메인뷰
    var body: some View {
        //MARK: - 전체 뷰
        VStack(alignment: .center, spacing: 0) {
            VStack() {
                HeaderView(pageName:"LegalGuide") 
            } .padding(.bottom, 30).padding(.top,0)
            
            
            //MARK: - 컨텐츠 뷰
            VStack {
                //FIX: 사용자 이름 참조하도록 변경
                Text("안녕하세요, 홍길동님")
                    .font(
                        .custom("Inter", size: 24)
                        .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .padding(.bottom, 42)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //MARK: - 카드 뷰
                ForEach(viewModel.cardItems, id:\.self) { card in
                    Button { selectedTab = card.targetTab } label: {
                        HomeCardView(
                        icon: card.icon,
                        title: card.title,
                        description: card.description
                    )
                    }.padding(.bottom, 33)
                    .frame(maxWidth:.infinity)
                    
                    
                    
                        
                }
            }
            .padding(.horizontal, 24)
            
            Spacer()
            
        }
        .background(.white)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    StatefulPreviewWrapper(AppTab.home) { binding in
        HomeView(selectedTab: binding)
    }
}
