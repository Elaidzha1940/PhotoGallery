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
                    SplashView()
                }
            }
            
        }
    }
}

#Preview {
    ImageView()
}

struct SplashView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(lineWidth: 1)
            .frame(width: 130, height: 200)
            .padding(.leading)
            .overlay(alignment: .trailing) {
                VStack {
                    Text("SPLASH")
                        .bold()
                        .font(.title)
                    Text("All Images and Videos on Slapsh Screen are free to use.")
                        .bold()
                        .font(.system(size: 14))
                        .frame(width: 120)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                    HStack {
                        Text("Try now")
                            .bold()
                            .font(.title2)
                        Image(systemName: "arrow.right")
                            .bold()
                    }
                }
                .padding(.leading, 5)
                .padding(.vertical)
            }
    }
}
