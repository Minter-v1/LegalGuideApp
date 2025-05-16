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
                .frame(maxWidth: .infinity, alignment: .center)
                .bold()
            
            Divider()
                .frame(height: 0.7)
                .background(Color(red: 0.39, green: 0.45, blue: 0.55))
                .frame(maxWidth: .infinity)
                .padding(.horizontal, -16)
            
            
            VStack(alignment:.leading, spacing: 30) {
                Text("비밀번호 재설정")
                    .font(.headline)
                    .bold()
                
                Group {
                    Text("현재 비밀번호")
                    InputField(placeholder: "현재 비밀번호를 입력하세요", text: $currentPassword, isSecure: true)
                    InputField(placeholder: "새 비밀번호를 입력하세요", text: $newPassword, isSecure: true)
                    InputField(placeholder: "새 비밀번호를 다시 입력하세요", text: $confirmPassword, isSecure: true)
                    
                }

                Button(action: {
                    // 저장 로직
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: "square.and.arrow.down")
                        Text("저장하기")
                    }
                    .font(.callout)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
            }
    
            .padding(.top, 20)
            
            Spacer()
            MainTabBar(selectedTab: $selectedTab)
        }
        
        .padding()
        .navigationTitle("비밀번호 재설정")

    }
}

#Preview {
    StatefulPreviewWrapper(MainTabBar.Tab.myInfo) { selectedTab in
        PasswordResetView(selectedTab: selectedTab)
   }
}

