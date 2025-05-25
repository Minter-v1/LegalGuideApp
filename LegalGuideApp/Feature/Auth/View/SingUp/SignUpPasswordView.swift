//
//  SignupNextView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/15/25.
//

import SwiftUI

struct SignUpPasswordView: View {
    @State private var id: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var navigateToLogin = false
    @State private var navigateToHome = false
//    @State private var selectedTab: MainTabBar.AppTab = .home

    var body: some View {
        
        ZStack {
            //MARK: - 링크 섹션
//            NavigationLink
            
            //MARK: - 전체 뷰
            VStack(spacing: 32) {
                LogoAppName()
                    .padding(.top, 40)
                
                VStack(spacing: 16) {
                    Text("회원가입")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)

                    Text("계정을 만들어 서비스를 이용하세요")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                }
                
                //MARK: - 입력 섹션
                VStack(alignment: .leading, spacing: 14) {
                    Text("아이디")
                        .font(.subheadline)
                    InputField(placeholder: "아이디를 입력하세요", text: $id)

                    Text("비밀번호")
                        .font(.subheadline)
                    InputField(placeholder: "비밀번호를 입력하세요", text: $password, isSecure: true  )

                    Text("비밀번호 확인")
                        .font(.subheadline)
                    InputField(placeholder: "비밀번호를 다시 입력하세요", text: $confirmPassword, isSecure: true)
                }
                
                Spacer()
                
                VStack(spacing: 16) {
                    DefaultButton(text: "가입하기") {
                        navigateToHome = true
                    }
                }
                .padding(.top, 20)

                    HStack(spacing: 4) {
                        Text("이미 계정이 있으신가요?")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Button("로그인") {
                            navigateToLogin = true
                        }
                        
                        .navigationDestination(isPresented: $navigateToLogin) {
                            LoginView()
                        }
                        .font(.footnote)
                        .foregroundColor(.blue)
                    }
                    .padding(.bottom, 30)
            }.padding(.horizontal, 20)
        }
        .navigationBarBackButtonHidden(true)
                
             
        
                
        
    }
}

#Preview {
    SignUpPasswordView()
}
