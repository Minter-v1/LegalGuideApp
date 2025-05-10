//
//  BlueButton.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct DefaultButton: View {
    var text: String = "btn"
    var buttonColor: Color = Color(red: 0, green: 0.42, blue: 1).opacity(0.8)
    var textColor: Color = Color(red: 0.97, green: 0.98, blue: 0.99)
    var verticalPadding: CGFloat = 16
    var action: () -> Void = {}
    
    var body: some View {
        HStack { // 부모 컨테이너
            Button(action: action) {
                Text(text)
                    .font(Font.custom("Inter", size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(textColor)
                    .padding(.vertical, verticalPadding)
                    .frame(maxWidth: .infinity) // 텍스트뷰도 frame 꽉 채워야 버튼 크기 화면에 다 참
            }
            .background(buttonColor)
            .cornerRadius(10)
            .overlay( //NOTE: 버튼 배경색이 white일 때, stroke
                buttonColor == .white ?
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.55), lineWidth: 1)
                : nil
            )
        }
        .frame(minHeight: 50) // 버튼 자체의 프레임
    }
}


#Preview {
    DefaultButton()
}
