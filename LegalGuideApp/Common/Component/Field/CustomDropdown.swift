//
//  CustomDropdown.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/7/25.
//

import SwiftUI

struct CustomDropdown: View {
    var title: String
    var placeholder: String = "선택하세요"
    var options: [String]
    @Binding var selection: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
                .bold()

            Menu {
                ForEach(options, id: \.self) { option in
                    Button(option) { selection = option }
                }
            } label: {
                HStack {
                    Text(selection.isEmpty ? placeholder : selection)
                        .foregroundColor(selection.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
            }
        }
    }
}
