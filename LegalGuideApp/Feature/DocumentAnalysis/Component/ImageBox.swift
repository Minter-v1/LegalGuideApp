//
//  SwiftUIView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/8/25.
//

import SwiftUI

struct ImageBox: View {
    var documentName: String = "photo.artframe"
    
    var body: some View {
        Image(systemName: documentName)
            .padding(.horizontal,180) //NOTE: 패딩값 조절 필요
            .padding(.vertical, 200) //NOTE: 패딩값 조절 필요
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.1))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.4), lineWidth: 1)
                

            )
//            .frame(maxWidth: .infinity)
            
    }
}

#Preview {
    ImageBox()
}
