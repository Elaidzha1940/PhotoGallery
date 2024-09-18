//
//  NavigationS.swift
//  PhotoGallery
//
//  Created by Elaidzha Shchukin on 17.09.2024.
//

import SwiftUI

struct NavigationS: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Hello, SwiftUI!")
                Text("Hello, SwiftUI!")
                Text("Hello, SwiftUI!")
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Finolog")
                            .font(.headline)
                        Text("Navigation Title")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white) // или другой цвет текста
                }
            }
            .toolbar {
                Button("Далее") {}
                    .foregroundStyle(.white)
            }
            .toolbarBackground(
                Color.mint,
                for: .navigationBar
            )
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationS()
}
