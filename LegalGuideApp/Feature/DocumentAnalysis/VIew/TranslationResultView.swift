//
//  TranslationResultView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/24/25.
//

import SwiftUI



struct TranslationResultView: View {
    //FIXME: - 튜플 value값 수정
    let infomation:[(label: String, value: String)] = [
        ("근무 시간:","주 40시간, 일 8시간"),
        ("급여:","브라ㅓ아라얼"),
        ("계약 기간:","주 40시간, 일 8시간"),
        ("퇴직금:","아렁ㄹ")
    ]
    var body: some View {
            VStack(alignment: .leading, spacing: 0) {
                
                    //MARK: - 서류 제목 및 설명
                    Group {
                        Text("근로 계약서")
                            .font(.custom("Inter", size: 24)
                                .weight(.bold)
                            )
                            .foregroundColor(.black)
                            .padding(.bottom, 16)
                        
                        Text("본 계약서는 고영주와 근로자 간의 근로 조건을 명시합니다.")
                            .font(.custom("Inter", size: 12)
                                .weight(.bold)
                            )
                            .foregroundColor(.black)
                            .lineLimit(nil)
                            .fixedSize(horizontal: true, vertical: true)
                            
                    }.padding(.bottom, 13)
                    
                    //MARK: - 상세 설명
                    ForEach(infomation, id:\.label) { data in
                        HStack(alignment: .center, spacing: 5){
                            Group{
                                Text(data.label)
                                    .font(
                                        .custom(
                                            "Inter",
                                            size: 12
                                        ) .weight(.bold)
                                    ).foregroundColor(.black)
                                
                                
                                Text(data.value)
                                    .font(
                                        .custom(
                                            "Inter",
                                            size: 12
                                        ) .weight(.bold)
                                    ).foregroundColor(.black)

                            }
                            .padding(.bottom, 15)
                            
                        }
                        
                    
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            .frame(maxWidth:.infinity, alignment: .leading)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 1)
            )
        
        
            
          
            
            

        
        
        
        
    }
}

#Preview {
    TranslationResultView()
}
