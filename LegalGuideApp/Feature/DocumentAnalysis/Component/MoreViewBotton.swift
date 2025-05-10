//
//  MoreViewBotton.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/10/25.
//

import SwiftUI

struct MoreViewBotton<Destination: View>: View {
    @State private var isLinkActive: Bool = false
    var text: String = "" //버튼 텍스트
    var buttonColor: Color = Color.white //white일때만 stroke 걸기
    var imageName: String = "external.link" //asset에 등록한 로고 파일명
    var destination: () -> Destination
    
    
    var body: some View {
        NavigationLink(
            destination: destination(),
            isActive: $isLinkActive
        ) {
            HStack(alignment: .center, spacing: 0) {
                
                Text(text)
                    .font(.custom("Inter", size: 14).weight(.medium))
                    .padding(.trailing, 5)
                    .foregroundColor(
                        buttonColor != .white ?
                            .white :
                                .black
                    )
                
                Group {
                    if buttonColor == .white {
                        Image(imageName)
                    } else {
                        Image("external.link.white")
                    }
                }
                
                    
            }
            .padding(.vertical, 5)
            .cornerRadius(8)
            .frame(maxWidth: .infinity)
            .overlay(
                buttonColor == Color.white ?
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.94), lineWidth: 1)
                : nil
            )
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(buttonColor)
            )
        }
           
        }
        
    }


//#Preview {
//    MoreViewBotton(text:"sample",buttonColor: .blue)
//}
