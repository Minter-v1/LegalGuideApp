//
//  InputField.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct InputField: View {
    var placeholder: String = ""
    @Binding var text: String //사용자 입력 데이터(데이터 주입)
    var placeholderColor: Color = Color(red: 0.39, green: 0.45, blue: 0.55) //NOTE: figma UI/UX플로우와 동일하게 맞췄음
    var strokeColor: Color = Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.55)
    var textColor: Color = Color.black //NOTE: 사용자 입력 텍스트 색상(다크모드 고려)
    var isSecure: Bool = false
    
    var body: some View {
        //MARK: - 전체 뷰
        ZStack(alignment: .leading) {
            //MARK: - 사용자 입력 텍스트 없을 때, placeholder 생성
            if text.isEmpty {
                Text(placeholder)
                    .font(.custom("Inter", size: 13))
                    .foregroundColor(placeholderColor)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(strokeColor, lineWidth: 1)
                    )
                
            }
            
            //MARK: - 입력 필드
            Group {
                if isSecure { SecureField("", text: $text)}
                else { TextField("", text: $text)}
            } .foregroundColor(textColor)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    StatefulPreviewWrapper("") { binding in
        InputField(placeholder: "test", text: binding)
    }
    
}
