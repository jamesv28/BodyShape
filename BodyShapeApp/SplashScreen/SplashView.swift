//
//  SplashView.swift
//  BodyShapeApp
//
//  Created by James Volmert on 8/4/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                TopView()
                Image(bikeImage)
                    .resizable()
                    .scaledToFit()
                Text("Discover how to shape body")
                    .font(.system(size: 48, weight: .black, design: .serif))
                    .padding(.horizontal)
                LastView()
            }
        }
    }
}

struct LastView: View {
    var body: some View {
        HStack {
            ArrowInCircle()
            Spacer()
        }
        .padding()
    }
    
}

struct ArrowInCircle: View {
    var body: some View {
        Image(systemName: "arrow.forward")
            .fontWeight(.bold)
            .imageScale(.large)
            .padding(3)
            .overlay(ZStack {
                Circle()
                Image(systemName: "arrow.forward")
                    .fontWeight(.bold)
                    .imageScale(.large)
                    .foregroundColor(lightGreen)
                    .offset(x: -6)
                    .scaleEffect(y: 0.7)
            })
            .padding()
            .background(Circle().fill(lightGreen))
    }
        
}
struct BackgroundView: View {
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .fill(lightPurple)
                .scaleEffect(2)
                .offset(y: -geometry.size.height * 0.4)
            
        }
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            Image(systemName: "line.horizontal.3")
                .imageScale(.large)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SplashView()
}
