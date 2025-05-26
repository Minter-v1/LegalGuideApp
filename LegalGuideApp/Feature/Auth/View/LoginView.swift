//
//  LoginView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/13/25.
//

import SwiftUI

struct LoginView: View {
    @State private var id: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn : Bool = false
    @State private var navigateToHome = false //로그인 관리
    @State private var navigateToSignUpInfo = false
    
    private var temptId: String = "1234"
    private var tempPw: String = "1234"

    
    var body: some View {
        ZStack {
            //MARK: - 로그인 페이지 링크
            NavigationLink(
                destination: MainContainerView(),
                isActive: $navigateToHome
            ) { EmptyView() }
        
        
            VStack(spacing: 32) {
                LogoAppName()
                    .padding(.bottom, 20)
                
                VStack(spacing: 16) {
                    Text("로그인")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text("계정을 로그인하여 서비스를 이용하세요")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Group {
                            Text("아이디")
                                .font(.callout)
                                .foregroundColor(.black)
                            InputField(placeholder: "아이디를 입력하세요", text: $id)
                        }
                        
                        Group {
                            Text("비밀번호")
                                .font(.callout)
                                .foregroundColor(.black)
                            InputField(placeholder: "비밀번호를 입력하세요", text: $password, isSecure: true)
                            
                            HStack {
                                Spacer()
                                Button(action: {
                                    // 비밀번호 찾기
                                }) {
                                    Text("비밀번호 찾기")
                                        .font(.footnote)
                                        .foregroundColor(.blue)
                                }
                            }
                        }
                    }
                }
                
                
                
                VStack(spacing: 20) {
                    HStack(spacing: 4) {
                        Text("계정이 없으신가요?")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Button("회원가입") {
                            navigateToSignUpInfo = true
                        }
                        
                        .navigationDestination(isPresented: $navigateToSignUpInfo) {
                            EmptyView()
                            //SignUpInfoView()
                        }
                        .font(.footnote)
                        .foregroundColor(.blue)
                    }
                    .padding(.top, 20)
                    
                    DefaultButton(text: "로그인") {
                        if (id == temptId) && (password == tempPw) {
                            navigateToHome = true
                        }
                    }
                }
                
            }
            .padding(.horizontal, 14)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .navigationBarBackButtonHidden(true)
        }
    }





#Preview {
    
    NavigationStack {
        LoginView()
    }
}

