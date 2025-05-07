//
//  PasswordResetView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/7/25.
//
import SwiftUI

struct PasswordResetView: View {
    @Binding var selectedTab : MainTabBar.Tab
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("내 정보 관리")
                .font(.headline)
                .bold()
            
            Divider()
                .frame(height: 0.7)
                .background(Color(red: 0.39, green: 0.45, blue: 0.55))
            
            
            VStack(alignment:.leading, spacing: 30) {
                Text("비밀번호 재설정")
                    .font(.headline)
                    .bold()
                
                Text("현재 비밀번호")
                InputField(placeholder: "현재 비밀번호를 입력하세요", text: $currentPassword, isSecure: true)
                InputField(placeholder: "새 비밀번호를 입력하세요", text: $newPassword, isSecure: true)
                InputField(placeholder: "새 비밀번호를 다시 입력하세요", text: $confirmPassword, isSecure: true)
                
                Spacer()
                
                Button(action: {
                    // 저장 로직
                }) {
                    Text("저장하기")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
            MainTabBar(selectedTab: $selectedTab)
        }
        
        .navigationTitle("비밀번호 재설정")
    
