import SwiftUI

struct CircleCountView: View {
    let count: Int
    let size: CGFloat
    let color: Color
    let bgColor: Color = .white
    let lineWidth: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .fill(bgColor)
                .overlay(
                    Circle().stroke(
                        color,
                        lineWidth: lineWidth
                    )
                )
            Text("+\(count)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(color)
                .minimumScaleFactor(0.1)
        }
        .frame(width: size, height: size)

    }
}
struct CircleImageView: View {
    let imgName: String
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat
    
    var body: some View {
        Image(imgName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(color, lineWidth: lineWidth)
                    
            ).frame(width: size, height: size)
    }
}

#Preview {
    ZStack {
        lightPurple.ignoresSafeArea()
        HStack(spacing: -30) {
            CircleImageView(imgName: person1, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imgName: person1, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imgName: person3, color: .white, size: 70, lineWidth: 1)
            CircleCountView(count: 7, size: 70, color: .black, lineWidth: 1)
        }
    }
}
