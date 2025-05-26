////
////  FindPassword.swift
////  LegalGuideApp
////
////  Created by 강윤서 on 5/16/25.
////
//
//import SwiftUI
//
//struct FindPassword: View {
//    @State private var id: String = ""
//    @State private var password: String = ""
//    @State private var phone: String = ""
//    @State private var navigateToLogin = false
//    @State private var navigateToHome = false
//    @State private var selectedTab: MainTabBar.AppTab = .home
//
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 32) {
//                LogoAppName()
//                    .padding(.top, 40)
//                
//                VStack(spacing: 16) {
//                    Text("비밀번호 찾기")
//                        .font(.system(size: 24, weight: .bold))
//                        .foregroundColor(.black)
//                    
//                    Text("회원정보에 등록하신 전화번호로 비밀번호를 발송해 드립니다.\n아래 입력하신 정보는 회원정보에 등록된 정보와 일치해야 합니다.")
//                        .font(.system(size: 13))
//                        .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
//                        .multilineTextAlignment(.center)
//                }
//                
//                VStack(alignment: .leading, spacing: 14) {
//                    Text("아이디")
//                        .font(.subheadline)
//                    InputField(placeholder: "연락처를 입력하세요", text: $id)
//                    
//                    Text("연락처")
//                        .font(.subheadline)
//                    InputField(placeholder: "비밀번호를 입력하세요", text: $phone)
//                    
//                    Spacer()
//                    VStack(spacing: 16) {
//                        DefaultButton(text: "확인") {
//                            navigateToHome = true
//                        }
//                    }
//                    .navigationDestination(isPresented: $navigateToHome) {
//                        HomeView(selectedTab: $selectedTab)
//                    }
//                    .padding(.bottom, 40)
//                }
//            }
//            .padding(.horizontal, 14)
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
//    }
//}
//
//#Preview {
//    FindPassword()
//}
