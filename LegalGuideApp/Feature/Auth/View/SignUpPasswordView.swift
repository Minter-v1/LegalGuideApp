//
//  SignupNextView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/15/25.
//

import SwiftUI

struct SignUpPasswordView: View {
    var body: some View {
        VStack(spacing: 32) {
            LogoAppName()
                .padding(.bottom, 32)
            
            VStack(spacing: 16) {
                Text("회원가입")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
                
                Text("계정을 만들어 서비스를 이용하세요")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
            }
        }
    }
}

#Preview {
    SignUpPasswordView()
}
