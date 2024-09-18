//  /*
//
//  Project: PhotoGallery
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.09.2024
//
//  */

import SwiftUI

struct ContentView: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = UIColor(
            red: 41/255,
            green: 59/255,
            blue: 77/255,
            alpha: 1)
        coloredAppearance.shadowColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
    }
    
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondView()) {
                Text("Go to Second View")
                    .navigationTitle("SwiftUI")
            }
        }
    }
}

struct SecondView: View {
    var body: some View {
        NavigationView {
            Text("Second View")
                .navigationBarTitleDisplayMode(.inline)
                .ignoresSafeArea()
        }
        
    }
}

