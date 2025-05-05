//
//  Indicator.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

//MARK: - 하단 indicator
struct Indicator: View {
    var currentIndex: Int = 0
    var total: Int = 4
    var body: some View {
        
        HStack(alignment: .center, spacing: 19) {
            //MARK: - Circle total 만큼 생성
            ForEach(0..<total, id:\.self) {i in
                Circle()
                //MARK: - currentIndex에 따른 색상 분기
                    .foregroundColor(
                        i == currentIndex
                        ? Color(red: 0, green: 0.42, blue: 1).opacity(0.8)
                        : Color(red: 0.85, green: 0.85, blue: 0.85)
                    )
                }
                .frame(width:8, height: 8)
                }
                    
            }
        }
      


#Preview {
    Indicator()
}
