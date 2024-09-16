//  /*
//
//  Project: PhotoGallery
//  File: CustomCircleA.swift
//  Created by: Elaidzha Shchukin
//  Date: 10.09.2024
//
//  */


import SwiftUI

struct CustomCircleA: View {
    @Binding var circleA: CGFloat
    
    var body: some View {
        VStack{
            Button(action: {
                withAnimation(.easeInOut(duration: 2.0)) {
                    circleA = circleA == 0.0 ? 0.5 : 0.0
                }
            }, label: {
                ZStack {
                    Circle()
                        .trim(from: 0.0, to: circleA)
                        .stroke(lineWidth: 4)
                        .frame(width: 40, height: 40)
                        .rotationEffect(.degrees(-90))
                    Circle()
                        .frame(width: 4, height: 4)
                        .offset(y: -20)
                }
            })
            
            Button(action: {
                withAnimation(.easeInOut(duration: 2.0)) {
                    circleA = circleA == 0.0 ? 0.5 : 0.0
                }
            }, label: {
                ZStack {
                    Circle()
                        .trim(from: 0.0, to: circleA)
                        .stroke(lineWidth: 4)
                        .frame(width: 40, height: 40)
                        .rotationEffect(.degrees(90))
                    Circle()
                        .frame(width: 4, height: 4)
                        .offset(y: 20)
                }
            })
            .offset(y: -48)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    CustomCircleA(circleA: .constant(0.5))
}
