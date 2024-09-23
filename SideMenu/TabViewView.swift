//  /*
//
//  Project: PhotoGallery
//  File: TabViewView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2024
//
//  */

import SwiftUI

struct TabViewView: View {
    @State var selectedIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            ImageViewV(image: "15")
                .tag(1)
            ImageViewV(image: "27")
                .tag(2)
            ImageViewV(image: "33")
                .tag(3)
            ImageViewV(image: "4")
                .tag(4)
            ImageViewV(image: "23")
                .tag(5)
        }
        .tabViewStyle(PageTabViewStyle())
        .offset(x: -10)
        .frame(width: 266, height: 170)
        .padding(.top, 10)
        .onReceive(timer, perform: { time in
            withAnimation {
                selectedIndex = selectedIndex == 5 ? 0 : selectedIndex + 1
            }
        })
    }
}

#Preview {
    TabViewView()
}

struct ImageViewV: View {
    var image = ""
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 230, height: 157)
            .clipped()
            .cornerRadius(30)
            .padding(.leading, 15)
    }
}
