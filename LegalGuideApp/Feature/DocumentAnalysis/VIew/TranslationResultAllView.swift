//
//  AnalysisView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/10/25.
//

import SwiftUI

struct TranslationResultAllView: View {
    @State private var isShowedAnalysis: Bool = false

    
    var body: some View {
        ZStack {
            //MARK: - 전체 화면 뷰
            VStack(alignment: .center, spacing: 0) {
                    //MARK: - Image Box
                    //FIXME: padding 안먹는 오류 슈정
                    ImageBox()
                        .padding(.top, 20)
                        .frame(maxWidth: .infinity)
                }
                .padding(.top, 20)
                .padding(.horizontal, 16)
                
                
                Spacer()
            
            }
            .background(.white)
        }
       
            
        
           
        }
    
       



#Preview {
    NavigationStack {
        TranslationResultAllView()
    }
    
}
