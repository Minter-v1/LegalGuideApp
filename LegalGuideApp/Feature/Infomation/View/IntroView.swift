//
//  Intron01.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

//페이지별 설명을 위한 구조체
struct AppIntro {
    let imageName: String
    let title: String
    let description: String
}

struct IntroView: View {
    //MARK: - 상태변수
    @State private var isActive = false //페이지 이동을 위한 상태변수
    @State private var currentFrame: Int = 0
    
    
    //MARK: - 단순 데이터 나열이라 ViewModel로 빼진 않았음
    //시스템 이미지인 "photo.artframe" 실제 디바이스에 안 보일 수 있음
    let steps: [AppIntro] = [
        AppIntro(imageName: "photo.artframe", title: "외국인 근로자를 위한 법률 가이드", description: "근로계약서 및 법류 제공 서비스에\n오신 것을 환영합니다."),
        AppIntro(imageName: "photo.artframe", title: "근로계약서 번역", description: "근로계약서를 촬영하거나 업로드하면\n자동으로 번역해 드립니다."),
        AppIntro(imageName: "photo.artframe", title: "법률 정보 제공", description: "계약서 내용 중 주의가 필요한 부분을\n알려드리고 관련 법률 정보를 제공합니다."),
        AppIntro(imageName: "photo.artframe", title: "개인정보 보호", description: "모든 문서는 개인정보 보호를 위해\n자동으로 필터링됩니다. ")
        
    ]
    
    
    var body: some View {
        NavigationStack {
            //MARK: - 전체 뷰
            VStack(alignment: .center, spacing: 0) {
                //MARK: - 로고 아이콘 + 어플리케이션 이름
                HStack(alignment: .center, spacing: 0) {
                    //TODO: - 아이콘 변경
                    Image(systemName: "photo.artframe")
                        .frame(width: 48, height: 48)
                        .padding(.trailing, 11)
                    //어플리케이션 이름
                    Text("LegalGuide")
                        .font(
                            .custom("Inter",size: 24)
                            .weight(.bold)
                        )
                        .foregroundColor(.black) //NOTE: 색 변경 필요할 수도? 다크모드 고려
                }
                .padding(.bottom, 159)
                
                //MARK: 사진
                //TODO: 사진 변경
                Image(systemName: steps[currentFrame].imageName)
                    .resizable()
                    .frame(width: 238, height: 160)
                    .padding(.bottom, 120)
               
                //MARK: - 텍스트뷰 섹션
                VStack(alignment: .center, spacing: 6){
                    //제목
                    Text(steps[currentFrame].title)
                        .font(
                            .custom("Inter", size: 24)
                            .weight(.bold)
                        )
                        .foregroundColor(.black) //NOTE: 색 변경 필요할 수도? 다크모드 고려
                    
                    //설명
                    Text(steps[currentFrame].description)
                        .font(
                            .custom("Inter", size: 16)
                        )
                        .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.55))
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 16)
                        
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 109)
                
                //다음 버튼
                DefaultButton(text: currentFrame == steps.count - 1 ? "시작하기" : "다음") {
                    if currentFrame < steps.count - 1 {
                        currentFrame += 1
                    } else {
                        isActive = true //페이지 이동
                    }
                }
                .padding(.bottom, 64)
                
                //하단 indicator
                Indicator(currentIndex: currentFrame)
                    .padding(.bottom, 15)
                
                
                
                
            }
            .padding(.horizontal, 30)
            .padding(.top, 57)
            .background(.white)
            //.animation(.easeIn,value: currentFrame)
            
            .navigationDestination(isPresented: $isActive) {
                EntryView()
            }
        }
        
        
       
    }
}

#Preview {
    IntroView()
}
