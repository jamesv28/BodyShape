
import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let bgColor: Color
    let fillColor: Color
    let percentage: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(
                    cornerRadius: 20
                )
                .fill(
                    fillColor.opacity(
                        0.7
                    )
                )
                .frame(
                    width: .infinity,
                    height: barWidth
                )
                RoundedRectangle(
                    cornerRadius: 20
                )
                .fill(
                    bgColor.opacity(
                        0.7
                    )
                )
                .frame(
                    width: geometry.size.width * percentage,
                    height: barWidth
                )
                
            }
        }
        .frame(width: .infinity, height: barWidth)

    }
    
}

#Preview {
    FillBarView(
        barWidth: 7,
        bgColor: .black,
        fillColor: lightGreen,
        percentage: 0.3
    )
}
