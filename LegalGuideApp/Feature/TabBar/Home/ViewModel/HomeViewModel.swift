//
//  HomeViewModel.swift
//  LegalGuideApp
//
//  Created by 이민지 on 5/24/25.
//

import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var cardItems: [CardItem] = [
        CardItem(icon: "bookmark", title: "내 기록 보기", description: "법률 정보 보기", targetTab: .myDocument),
        CardItem(icon: "camera", title: "OCR 찍기", description: "근로계약서를 촬영하여 번역 및 분석하세요.", targetTab: .scan),
        CardItem(icon: "book", title: "법률 정보 보기", description: "외국인 근로자 관련 법률 정보를 확인하세요.", targetTab: .lawInfo)
    ]
}
