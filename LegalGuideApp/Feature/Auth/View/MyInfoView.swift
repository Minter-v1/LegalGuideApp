//
//  MyInfoView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

struct MyInfoView: View {
    @Binding var selectedTab: MainTabBar.Tab
    
    @State private var nationality: String = ""
    @State private var language: String = ""
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var id: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Divider()
                            .frame(height: 0.7)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.39, green: 0.45, blue: 0.55))
                            .padding(.horizontal, -16)
                        
                        Text("개인 정보")
                            .font(.title3)
                            .bold()
                        
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
                        InputField(placeholder: "이름", text: $name)
                        
                        Text("연락처")
                            .font(.subheadline)
                        InputField(placeholder: "연락처", text: $phone)
                        
                        Text("아이디")
                            .font(.subheadline)
                        InputField(placeholder: "아이디", text: $id)
                        
                        Text("비밀번호 재설정")
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 8)
                    }
                    .padding()
                }
                
                HStack {
                    Button(action: {
                        // TODO: 저장하기
                    }) {
                        HStack {
                            Image(systemName: "square.and.arrow.down")
                            Text("저장하기")
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    }
                    
                    Button(action: {
                        // TODO: 저장하기
                    }) {
                        HStack {
                            Image(systemName: "arrow.right.square")
                            Text("로그아웃")
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.red)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    }
                }
                .padding(.horizontal)
                
                MainTabBar(selectedTab: $selectedTab)
            }
            .navigationTitle("내 정보 관리")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
    }
}

#Preview {
    StatefulPreviewWrapper(MainTabBar.Tab.myInfo) { selectedTab in
        MyInfoView(selectedTab: selectedTab)
   }
}

