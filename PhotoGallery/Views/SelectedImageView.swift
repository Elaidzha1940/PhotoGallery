//  /*
//
//  Project: PhotoGallery
//  File: SelectedImageView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2024
//
//  */

import SwiftUI

struct SelectedImageView: View {
    var selectedData: dataMode
    
    
    var body: some View {
        VStack {
            Image(selectedData.name)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: UIScreen.main.bounds.width)
                .frame(height: 300)
                .clipped()
            
            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .bottom) {
                    Text("Name")
                        .bold()
                        .font(.largeTitle)
                    Spacer()
                    Button {
                        //
                    } label: {
                        HStack(spacing: 15) {
                            Image(systemName: "arrow.down.circle")
                                .font(.title2)
                            Text("Download")
                                .font(.title3)
                        }
                        .foregroundStyle(.white)
                        .frame(width: 165, height: 45)
                        .background(.black)
                        .cornerRadius(18)
                    }
                }
            }
        }
    }
}

#Preview {
    SelectedImageView(selectedData: dataMode(name: "1", title: "iOS"))
}
