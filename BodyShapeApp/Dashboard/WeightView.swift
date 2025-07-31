import SwiftUI

struct WeightView: View {
    let weight: CGFloat
    let weightUnits: String
    
    var body: some View {
        HStack(spacing: 50) {
            VStack {
                HStack {
                    Text("\(weight, specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                Text("Current Weight")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("2.5")
                        .font(.title)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                FillBarView(
                    barWidth: 7,
                    bgColor: .black,
                    fillColor: lightGreen,
                    percentage: 0.3
                )
                Text("left to gain")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    WeightView(
        weight: 123.5,
        weightUnits: "lbs"
    )
}
