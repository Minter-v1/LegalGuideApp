//
//  LogoAppName.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct LogoAppName: View {
    var imageName: String = "photo.artframe"
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            
            //MARK: - 어플리케이션 로고 이미지
            //TODO: - 범용성 있게 코드 개선, 현재는 시스템 이미지만 인식
            Image("Logo")
                .resizable()
                .frame(width: 64, height: 64)
            
            //MARK: - 어플리케이션 이름 텍스트뷰
            Text("LegalGuide")
                .font(.custom("Inter", size: 20).weight(.bold))
                .foregroundColor(.black)
        }
    }
}

#Preview {
    LogoAppName()
}
