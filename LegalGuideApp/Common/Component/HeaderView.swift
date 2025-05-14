//
//  HeaderView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/10/25.
//

import SwiftUI

struct HeaderView<Destination: View>: View {
    @State private var isLinkActive: Bool = false
    var pageName: String = ""
    var destination: () -> Destination //클로저 형태로
    
    var body: some View {
        
        
        VStack {
            //NOTE: - Stack 내부에서 Link구현
            NavigationLink (
                destination: destination(),
                isActive: $isLinkActive
            ) { EmptyView() }
            
            //MAKR: - 헤더 뷰
            //FIX(refactor): Button뷰 삭제하고 NavigationLink의 클로저로 구현
            HStack(alignment: .center, spacing: 100) {
                Button(action: {
                    isLinkActive = true
                } ) {
                    Image(systemName:"arrowshape.left") //NOTE: - 아이콘 변경
                        .foregroundColor(.black)
                }
                .padding(.leading, 16)
                
                Text(pageName)
            
            }
            .padding(.top, 24)
            .padding(.leading, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
            }
        
        
            //MARK: - 구분선
            Divider()
                .frame(height: 1)
                .background(Color.black)
                .padding(.top, 16)
        }
        
}

#Preview {
    NavigationStack { //NOTE: - NavStack으로 감싸지 않으면 Preview에서 이동이 동작하지 않음
        HeaderView(pageName: "제목") { IntroView() }
    }
   
}
