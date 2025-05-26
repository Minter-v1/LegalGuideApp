//
//  HeaderView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/10/25.
//

import SwiftUI

struct HeaderView: View {
    var pageName: String = ""
    var backAction: (() -> Void)? = nil // 뒤로가기 액션 클로저 (선택) ->

    var body: some View {
        VStack {
            //MARK: - 헤더 바
            HStack(alignment: .center, spacing: 16) {
                if let backAction = backAction {
                    Button(action: backAction) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                    .padding(.leading, 8)
                    .buttonStyle(.plain)
                }

                Text(pageName)
                    .font(.headline)
                    .foregroundColor(.black)

                Spacer()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)

            //MARK: - 구분선
            Divider()
                .frame(height: 0.8)
                .background(Color.black)
        }
    }
}


#Preview {
    NavigationStack { //NOTE: - NavStack으로 감싸지 않으면 Preview에서 이동이 동작하지 않음
        HeaderView(pageName: "제목") {}
    }
   
}
