//
//  SignupView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/15/25.
//

import SwiftUI

struct SignUpInfoView: View {
    @State private var nationality: String = ""
    @State private var language: String = ""
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var navigateToPassword = false
    @State private var navigateToLogin = false
    
    var body: some View {
        NavigationStack {
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
                    
                    VStack(alignment: .leading, spacing: 14) {
                        CustomDropdown(
                            
                            title: "국적",
                            options: ["베트남", "중국", "태국", "필리핀", "인도네시아", "기타"],
                            selection: $nationality
                        )
                        
                        CustomDropdown(
                            title: "사용 언어",
                            options: ["한국어", "베트남어", "중국어", "태국어", "필리핀어", "인도네시아어", "영어"],
                            selection: $language
                        )
                        
                        Text("이름")
                            .font(.subheadline)
                        InputField(placeholder: "이름을 입력하세요", text: $name)
                        
                        Text("연락처")
                            .font(.subheadline)
                        InputField(placeholder: "연락처를 입력하세요", text: $phone)
                    }
                }
                Spacer()
                
                VStack {
                    DefaultButton(text: "다음") {
                        navigateToPassword = true
                    }
                }
               
                
                HStack(spacing: 4) {
                    Text("이미 계정이 있으신가요?")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Button("로그인") {
                        navigateToLogin = true
                    }
                    
                    
                    .font(.footnote)
                    .foregroundColor(.blue)
                }
                .padding(.bottom, 30)
            }
        }
        .padding(.horizontal, 14)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    SignUpInfoView()
}
