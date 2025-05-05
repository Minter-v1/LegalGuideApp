//
//  BlueButton.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct BlueButton: View {
    var text: String = "btn"
    var action: () -> Void = {}
    
    var body: some View {
        HStack { // 부모 컨테이너
            Button(action: action) {
                Text(text)
                    .font(Font.custom("Inter", size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.97, green: 0.98, blue: 0.99))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity) // 텍스트뷰도 frame 꽉 채워야 버튼 크기 화면에 다 참
            }
            .background(Color(red: 0, green: 0.42, blue: 1).opacity(0.8))
            .cornerRadius(10)
        }
        .frame(maxWidth: .infinity, minHeight: 50) // 버튼 자체의 프레임
    }
}


#Preview {
    BlueButton()
}
