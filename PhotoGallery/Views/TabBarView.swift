//  /*
//
//  Project: PhotoGallery
//  File: TabBarView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2024
//
//  */

import SwiftUI

struct TabBarView: View {
    @State var progress: CGFloat = 0.5
    @State var selectedItem: TabIcon = .Home
    @State var xOffset: CGFloat = 2 * 70.0
    
    var body: some View {
        HStack {
            ForEach(sidebars) { item in
                Image(systemName: item.icon)
                    .foregroundStyle(.black)
                    .onTapGesture {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation {
                                selectedItem = item.tab
                                xOffset = CGFloat(item.index) * 70.0
                            }
                        }
                        withAnimation {
                            progress = 0.0
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation {
                                progress = 0.5
                            }
                        }
                    }
                Spacer()
            }
            .frame(width: 23, height: 23)
        }
        .frame(maxWidth: UIScreen.main.bounds.width - 40)
        .frame(height: 73)
        .background(.ultraThickMaterial)
        .overlay(alignment: .topLeading) {
            CustomCircleA(circleA: $progress)
        }
    }
}

#Preview {
    TabBarView()
}
