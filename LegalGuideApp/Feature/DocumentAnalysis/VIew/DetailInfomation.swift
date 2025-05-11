//
//  DetailInfomation.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/11/25.
//

import SwiftUI

struct DetailInfomation: View {
    @ViewBuilder
    private func textBox(
        title: String,
        description: String
    ) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.custom("Inter",size: 16).weight(.bold))
                .foregroundColor(.black)
                
            
            
            Text(description)
                .font(.custom("Inter", size: 12).weight(.medium))
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth:.infinity)
        }
        .padding(.leading, 18)
        .padding(.trailing, 6)
        .padding(.top, 12)
        .padding(.bottom, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.94), lineWidth: 1)
        )
    }
    let textBoxItems: [TextBoxItem] = [
        TextBoxItem(title:"법률 목적",description: "근로자의 퇴직 후 생활 안정과 복지 증진을 위해 퇴직급여제도를 설정하도록 하는 것"),
        TextBoxItem(title:"관련 법률 정보",description: "1)사용자는 퇴직하는 근로자에게 급여를 지급하기 위하여 퇴직급여제도를 설정하여야한다.\n2)퇴직급여제도의 설정 및 운영에 필요한 사항은 [근로자퇴직급여 보장법] 이 정하는 바에 따른다."),
        TextBoxItem(title:"쉬운 설명",description: "회사는 1년 이상 일한 직원이 퇴사할 때 퇴직금을 주어야 합니다. 퇴직금은 일반적을 근무 연수 X 평균 임금 30일분으로 계산됩니다. \n예를 들어, 1년 동안 월급 200만원을 받았다면 퇴직금으로 약 200만원을 받을 수 있습니다."),
        TextBoxItem(title: "관련 사례", description: "근로자가 1년 이상 근무했는데 퇴직금을 받지 못한 경우, \n 고용노동부에 신고하거나 법적 조치를 취할 수 있습니다.\n\n계약서에 ‘퇴직금 없음’ 이라고 명시되어 있더라도, 법적으로 1년 이상 근무 시 퇴직금을 받을 권리가 있습니다.")
    ]
    
    
    var body: some View {
        
        VStack {
            //FIX: pageNAme은 법률명이 되어야하니 바인딩 필요할 것 같기도
            HeaderView(pageName: "법 이름") {
                AnalysisDocumentView()
            }
            
            //MARK: - 메인 뷰
            VStack(alignment: .center, spacing: 0) {
                //MARK: -
                Text("법률 조항에 대한 상세 정보와 쉬운 설명을 제공합니다.")
                    .font(.custom("Inter", size: 12))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                    .padding(.bottom, 30)
                
                
                //MARK: - 텍스트 박스 섹션
                ForEach(textBoxItems) { item in
                    textBox(title: item.title, description: item.description)
                        .padding(.bottom, 24)
                }
                
                VStack{}.padding(.bottom, 49)
                
                //FIX: 이동할 뷰 수정
                MoreViewBotton(text:"국가법령정보센터에서 보기", buttonColor:.blue, verticalPadding: 14, destination: { EmptyView() })
                    
                
                
                Spacer()
                //MARK: footer 섹션
                Text("본 분석은 법률 제공 목적으로만 사용되며, 법적 조언이 아닙니다.\n정확한 법률 상담은 변호사와 상담하시기 바랍니다.")
                    .font(.custom("Inter", size: 12))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                    .multilineTextAlignment(.center)
                    .frame(width: 324)
    //                .padding(.bottom, 27)
                    
                
            }
                .padding(.top, 18)
                .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}



struct TextBoxItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    
}


#Preview {
    NavigationStack {
        DetailInfomation()
    }
    
}
