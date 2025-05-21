//
//  ScanButton.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/12/25.
//

import SwiftUI

struct ScanButton: View {
    let title: String
    let icon: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                Image(systemName: icon)
                    .font(.system(size: 20, weight: .semibold))
                Text(title)
                    .font(.subheadline)
            }
            .foregroundColor(.black)
            .frame(width: 120, height: 80)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.05), radius: 3, x:0, y:1)
        }
    }
}

