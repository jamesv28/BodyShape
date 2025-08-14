//
//  CalendarView.swift
//  BodyShapeApp
//
//  Created by James Volmert on 8/4/25.
//

import SwiftUI

struct DailyDataModel: Identifiable {
    let id = UUID()
    let day: String
    let percentage: CGFloat
    let amount: Int
    
}
struct CalendarView: View {
    let selectedDay = "Thu"
    let dailyData: [DailyDataModel]
    let height: CGFloat
    let yOffset: CGFloat
    let selectedWeight: Int
    let selectedWeightUnits: String = "lb"
    let selectedDim = 70.0
    
    var body: some View {
        Rectangle()
            .stroke(style: StrokeStyle(lineWidth: 0.2, lineCap: .square, dash: [1,5]))
            .frame(height: 5 )
    }
}

#Preview {
    CalendarView(
        dailyData: [
            .init(
                day: "Mon",
                percentage: 0.6,
                amount: 1
            ),
            .init(
                day: "Tue",
                percentage: 0.6,
                amount: 1
            ),
            .init(
                day: "Wed",
                percentage: 0.8,
                amount: 1
            ),
            .init(
                day: "Thu",
                percentage: 0.6,
                amount: 1
            ),
            .init(
                day: "Fri",
                percentage: 0.6,
                amount: 1
            ),
        ],
        height: 100,
        yOffset: -5,
        selectedWeight: 13
    )
}
