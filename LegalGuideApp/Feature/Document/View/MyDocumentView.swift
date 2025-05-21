//
//  MyDocumentView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

struct MyDocumentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ZStack {
                HStack {
                    Text("내 문서 기록")
                        .font(.headline)
                        .bold()
                    }
                .padding(.horizontal)
            }
            Spacer()
        }
    
    }
}

#Preview {
    MyDocumentView()
}
