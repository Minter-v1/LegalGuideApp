//
//  MyInfoView.swift
//  LegalGuideApp
//
//  Created by 강윤서 on 5/6/25.
//

import SwiftUI

struct MyInfoView: View {
    var body: some View {
        @Binding var selectedTab : MainTabBar.Tab
    }
}

/* #Preview {
    StatefulPreviewWrapper(MainTabBar.Tab.myInfo) { selectedTab in
        MyInfoView(selectedTab: selectedTab)
    }
}
