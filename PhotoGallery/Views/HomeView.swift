//  /*
//
//  Project: PhotoGallery
//  File: HomeView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2024
//
//  */

import SwiftUI

struct HomeView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.4)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        SideBar(show: $show)
                            .offset(y: 4)
                        Spacer()
                        SearchBar()
                        ProfileView()
                    }
                    .padding(.horizontal)
                    ImageView()
                    Text("Added recently")
                        .bold()
                        .font(.title)
                        .padding(.leading)
                    ImageGridView()
                }
            }
            .overlay(alignment: .bottom) {
                TabBarView()
                    .offset(y: 20)
            }
            .offset(x: show ? 255 : 0)
            .overlay {
                SideBarMenuView()
                .offset(x: show ? 0 : -270)
            }
        }
    }
}

#Preview {
    HomeView()
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
            
            Image(systemName: "person.fill")
                .bold()
                .font(.title2)
        }
    }
}

//#Preview {
//    MyView()
//}
