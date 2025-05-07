//
//  HomeCardView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

    struct HomeCardView: View {
        let icon: String
        let title: String
        let description: String
        
        var body: some View {
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(red: 0, green: 0.42, blue: 1))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .bold()
                    
                    Text(description)
                        .font(.subheadline)
                        .foregroundStyle(Color(red: 0.39, green: 0.45, blue: 0.55))
                }
                Spacer()
            }
            .padding()
            .frame(height: 90)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.4))
            )
        }
    }

