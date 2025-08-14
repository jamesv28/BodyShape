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
    let amount: Int
    let offsetY: CGFloat
    let circleDim = 8.0
    let delta = 10.0
    var selectedWeightUnits: String = "lbs"
    
    var body: some View {
        VStack(spacing: 0) {
            if isSelected {
                HStack(spacing: 3) {
                    Text("\(amount)")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("\(selectedWeightUnits)")
                    
                }
                .padding(.vertical, 30)
            }
                ZStack(alignment: .bottom) {
                    Rectangle()
                    .stroke(lineWidth: 0.5)
                    .frame(width: 1, height: height)
                
                ZStack {
                    if isSelected {
                        
                    }
                    Circle()
                        .frame(width: circleDim, height: circleDim)
                        .offset(y: -(height - circleDim) * percent)
                    
                }
                    
            }
        }
    }
}

#Preview {
    HStack(alignment: .bottom) {
        CalendarDatView(
            percent: 0.6,
            isSelected: true,
            height: 100,
            day: "Mon",
            amount: 7,
            offsetY: -5
        )
        CalendarDatView(
            percent: 0.6,
            isSelected: false,
            height: 100,
            day: "Tues",
            amount: 7,
            offsetY: -5
        )
    }
}
