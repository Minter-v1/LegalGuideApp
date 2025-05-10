//
//  AnalysisDocumentView.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/10/25.
//

import SwiftUI

struct AnalysisDocumentView: View {
    @ViewBuilder
    private func warningBoxView(title: String, message: String) -> some View {
        //MARK: - (text) 경고 텍스트 박스
        VStack(alignment: .leading, spacing: 0) {
            //경고 심볼 + 텍스트
            HStack(alignment: .center, spacing: 0){
                Image(systemName:"exclamationmark.circle.fill")
                    .foregroundColor(.red)
                    .padding(.trailing, 8)
                
                Text(title)
                    .font(
                        .custom("Inter", size: 14)
                        .weight(.semibold)
                    )
                    .foregroundColor(.red)
            }
            //설명 텍스트
            Text(message)
                .font(
                    .custom("Inter", size: 12)
                )
                .multilineTextAlignment(.center)
                .padding(.top, 4)
                .foregroundColor(.red)
        }
        .padding(.vertical, 12)
        .padding(.leading, 12)
        .padding(.trailing, 6)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.red, lineWidth: 1)
        )
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.94, green: 0.27, blue: 0.27).opacity(0.15))
        )
        .frame(maxWidth: .infinity, alignment: .center)
    }
    
    
    @ViewBuilder
    private func descriptionBoxView<Destination: View>(
        title: String,
        subtitle: String,
        description: String,
        easyDescription: String,
        destination: @escaping () -> Destination //NOTE: - 호출 시, 클로져 형태로 받아야함 { SampleView() }
    ) -> some View {
        //MARK: - 전체 텍스트 박스 뷰
        VStack {
            //MARK: - (text) title + subtitle
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "exclamationmark.circle")
                        .foregroundColor(.blue)
                        .padding(.trailing, 5)
                    
                    Text(title)
                        .font(
                            .custom("Inter", size: 16).weight(.semibold)
                        )
                }
                .padding(.bottom, 8)
                //MARK: - (text) 법 이름
                Text(subtitle)
                    .font(
                        .custom("Inter", size: 14)
                        .weight(.medium)
                    )
                    .padding(.bottom, 12)
                //MARK: - (text) 설명
                VStack(alignment: .leading, spacing: 13) {
                    
                    //법률설명
                    //NOTE: - 2개의 텍스트뷰 모두 패딩 문제 있는 듯
                    Text(description)
                        .font(.custom("Inter", size: 12))
                        .fixedSize(
                            horizontal: false, vertical: true
                        )

                       
                    //쉬운설명
                    Text(easyDescription)
                        .font(.custom("Inter", size: 12))
                        .foregroundColor(.gray)
                        .fixedSize(
                            horizontal: false, vertical: true
                        )
                        .padding(.bottom, 6)
                    
                    //MARK: -(btn) 자세히 보기 버튼
                    MoreViewBotton(text:"자세히 보기", destination: destination)
                }
                .frame(alignment: .leading)
                .padding(.leading, 19)
                .padding(.trailing, 29)
                
                
            }
            .frame(alignment: .leading)
        }
        .padding(.vertical, 15)
        .padding(.leading, 14)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 0.39, green: 0.45, blue: 0.55).opacity(0.94), lineWidth: 1)
        )
        
    }
    
    
    
    
    var body: some View {
        VStack{}.padding(.bottom, 23)
        //MARK: - 헤더
        HeaderView(pageName: "법률 분석 결과") { AnalysisView() }
        //MARK: - 메인뷰
        VStack(alignment: .center, spacing: 0) {
        
            
            //MARK: - (text)안내 문구
            Text("계약서 내용 중 한국 노동법 기준으로 주의가 필요한 부분을 안내해 드립니다.")
                .font(.custom("Inter",size: 12))
                .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                .padding(.top, 20)
                .padding(.bottom, 32)
            
            //MARK: - (text) 주의 텍스트 박스
            warningBoxView(
                title: "주의가 필요한 내용",
                message: "계약서에 퇴직금 지급 조건이 명시되어 있으나, 한국 노동법에 따르면 1년 이상 근무한 모든 근로자에게 퇴직금을 지급해야 합니다."
            )
            .padding(.bottom, 37)
            
            
            //MARK: - (text) 법률 정보 설명 박스
            descriptionBoxView(title: "관련 법률 정보",
                               subtitle: "근로기준법 제 34조 (퇴직급여제도)",
                               description: "사용자는 퇴직하는 근로자에게 급여를 지급하기 위하여 퇴직 급여제도를 설정하여야 합니다.",
                               easyDescription: "쉬운 설명: 회사는 1년 이상 일한 직원이 퇴사할 때 퇴직금을 주어야 합니다."
            ) { DetailInfomation() }
            .padding(.bottom, 25)
            
            //MARK: - (text) 추가 확인 사항 박스
            descriptionBoxView(title: "추가 확인 사항",
                               subtitle: "근로시간 및 휴게시간",
                               description: "계약서에 명시된 근로시간이 주 40시간, 일 8시간입니다.\n한국 노동법에 따르면 1일 8시간, 1주 40시간을 초과하는\n근로에 대해서는 연장근로수당을 지급해야 합니다.",
                               easyDescription: "쉬운 설명: 하루 8시간, 일주일 40시간 이상 일하면 추가 수당을 받아야합니다."
            ) { DetailInfomation() }
                
            
            Text(
                "본 분석은 법률 제공 목적으로만 사용되며, 법적 조언이 아닙니다.\n정확한 법률 상담은 변호사와 상담하시기 바랍니다."
            )
            .font(.custom("Inter",size: 12))
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .padding(.top, 114)
            .padding(.bottom, 24)
        }
        .padding(.leading, 16)
        .padding(.trailing, 26)
    }
}

#Preview {
    NavigationStack {
        AnalysisDocumentView()
    }
   
}

