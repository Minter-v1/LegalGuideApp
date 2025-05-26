//
//  FindPasswordSuccess.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/16/25.
//

import SwiftUI

struct FindPasswordSuccess: View {
    @State private var navigateToLogin = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                
                LogoAppName()
                    .padding(.top, 40)
                
                VStack(spacing: 12) {
                    Text("비밀번호 찾기")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text("회원정보에 등록하신 전화번호로 비밀번호를 발송해 드립니다.\n아래 입력하신 정보는 회원정보에 등록된 정보와 일치해야 합니다.")
                        .font(.system(size: 13))
                        .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 16)
                
                VStack(spacing: 12) {
                    (
                    Text("비밀번호가 ")
                        .font(.title2)
                        .bold()
                    +
                    Text("연락처로 발송")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.blue)
                    +
                    Text("되었습니다.")
                        .font(.title2)
                        .bold()
                    )
                    .padding(.top, 115)
    
                    Text("입력해주신 연락처로 비밀번호가 발송되었습니다.\n휴대전화를 확인해주세요.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 16)
                
                Spacer()

                VStack(spacing: 16) {
                    DefaultButton(text: "확인") {
                        navigateToLogin = true
                    }
                    .padding(.top, 40)
                    .padding(.bottom, 30)
                }
                .padding(.bottom, 20)
                .navigationDestination(isPresented: $navigateToLogin) {
                        LoginView()
                }
            }
            .padding(.horizontal, 14)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    FindPasswordSuccess()
}
