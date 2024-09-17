//  /*
//
//  Project: PhotoGallery
//  File: ImageView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2024
//
//  */

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Popular")
                .bold()
                .font(.title)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 7) {
                    ForEach(theImages2) { item in
                        Image(item.name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 130, height: 200)
                            .cornerRadius(20)
                    }
                }
            }
            
        }
    }
}

#Preview {
    ImageView()
}

struct PexelsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(lineWidth: 1)
            .frame(width: 130, height: 200)
            .padding(.leading)
    }
}
