//  /*
//
//  Project: PhotoGallery
//  File: ImageGridView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2024
//
//  */

import SwiftUI

struct ImageGridView: View {
    @ObservedObject var imageSelection = ImageSelection()
    var columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            HStack(spacing: 0) {
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(theImages, id: \.id) { item in
                        Button {
                            imageSelection.selectedData = item
                            imageSelection.showingSheet = true
                        } label: {
                            Image(item.name)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 180, height: imageSelection.getHeight((theImages.firstIndex(of: item) ?? 0)))
                                .cornerRadius(20)
                                .padding(.vertical, 2)
                        }
                    }
                }
                
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(theImages, id: \.id) { item in
                        Button {
                            imageSelection.selectedData = item
                            imageSelection.showingSheet = true
                        } label: {
                            Image(item.name)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 180, height: imageSelection.getHeight1((theImages.firstIndex(of: item) ?? 0)))
                                .cornerRadius(20)
                                .padding(.vertical, 2)
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    ImageGridView()
}
