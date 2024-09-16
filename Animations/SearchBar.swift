//  /*
//
//  Project: PhotoGallery
//  File: SearchBar.swift
//  Created by: Elaidzha Shchukin
//  Date: 10.09.2024
//
//  */

import SwiftUI

struct SearchBar: View {
    @State var state: Bool = false
    @Namespace var namespace
    
    var body: some View {
        if !state{
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .matchedGeometryEffect(id: "one", in: namespace)
                    .frame(width: 50, height: 50)
                
                Image(systemName: "magnifyingglass")
                    .bold()
                    .font(.title2)
                    .matchedGeometryEffect(id: "icon", in: namespace)
                    .foregroundStyle(.black)
            }
            .foregroundStyle(.white)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.9, dampingFraction: 0.9)) {
                    state.toggle()
                }
            }
        } else {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .matchedGeometryEffect(id: "one", in: namespace)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .overlay(alignment: .leading) {
                    Image(systemName: "magnifyingglass")
                        .bold()
                        .font(.title2)
                        .matchedGeometryEffect(id: "icon", in: namespace)
                        .foregroundStyle(.black)
                        .padding(.leading, 10)
                }
            
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.9, dampingFraction: 0.9)) {
                        state.toggle()
                    }
                }
        }
    }
}

#Preview {
    SearchBar()
}
