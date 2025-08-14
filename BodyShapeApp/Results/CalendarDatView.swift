//
//  CalendarDatView.swift
//  BodyShapeApp
//
//  Created by James Volmert on 8/13/25.
//

import SwiftUI

struct CalendarDatView: View {
    let percent: CGFloat
    let isSelected: Bool
    let height: CGFloat
    let day: String
    let amo0unt: Int
    let offsetY: CGFloat
    let circleDim = 8.0
    var selectedWeightUnits: String = "lbs"
    
    var body: some View {
        VStack(spacing: 0) {
            if isSelected {
                Text("Selected")
            }
            GeometryReader { geometry in
                ZStack(alignment: .bottom) {
                    Rectangle()
                    .stroke(lineWidth: 0.5)
                    .frame(width: 1, height: height)
                
                ZStack {
                    if isSelected {
                        Text("is selectyed")
                    }
                    Circle()
                        .frame(width: circleDim, height: circleDim)
                        .offset(y: -height * percent)
                    
                }
                }
                    
            }
        }
    }
}

#Preview {
    CalendarDatView(
        percent: 0.6,
        isSelected: false,
        height: 100,
        day: "Mon",
        amo0unt: 7,
        offsetY: -5
    )
    .padding()
}
