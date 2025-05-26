//
//  EntryView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct EntryView: View {
    @State private var selectedLanguage: String = ""
    @State private var navigateToLogin = false
    @State private var navigateToSignUpInfo = false
    
    let languages = ["한국어", "English", "日本語", "中文", "Deutsch"]
    
    var body: some View {
        NavigationStack {
            //MARK: - 전체 뷰
            VStack (alignment: .center, spacing: 0) {
                //MARK: - 인트로 섹션
                VStack {
                    //MARK: - 로고 + 앱 네임 섹션
                    LogoAppName()
                        .padding(.bottom, 40)
                    
                    //MARK: - 텍스트 섹션
                    VStack(alignment: .center, spacing: 13) {
                        
                        //App Name
                        Text("외국인 근로자를 위한 법률 가이드")
                            .font(.custom("Inter", size: 24).weight(.bold))
                            .foregroundColor(.black)
                        
                        //Description
                        Text("근로계약서 번역 및 법률 정보 제공 서비스")
                            .font(.custom("Inter", size: 16))
                            .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                    }
                }
                .background(.white)
                .padding(.bottom, 44)
                .padding(.top, 160)
                
                
                //MARK: - 언어 선택 Picker
                //TODO: 커스텀 드롭다운 만들어서 적용하기
                CustomDropdown(
                    title: "언어 선택",
                    options: languages,
                    selection: $selectedLanguage
                )
                .padding(.horizontal, 16)
                .padding(.bottom, 28)
                
                //MARK: - 분기된 버튼 섹션
                HStack(alignment: .center, spacing: 14){
                    DefaultButton(text:"로그인",buttonColor: .white, textColor: .black, verticalPadding: 12) {
                        navigateToLogin = true
                    }
                    .navigationDestination(isPresented: $navigateToLogin) {
                        LoginView()
                    }
                    
                    DefaultButton(text:"회원가입", verticalPadding: 12) {
                        navigateToSignUpInfo = true
                    }
                    .navigationDestination(isPresented: $navigateToSignUpInfo) {
                        SignUpInfoView()
                    }
                }
                .padding(.horizontal, 16)
                
                
                //MARK: - 텍스트 링크 섹션
                Text("회원가입 시 이용약관과 개인정보처리방침에 동의하게 됩니다.")
                    .font(.custom("Inter", size: 13))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                    .padding(.top, 52)
                
                
                Spacer()
            }
            .background(.white)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    EntryView()
}
