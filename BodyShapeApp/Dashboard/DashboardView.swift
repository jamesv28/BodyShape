import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(
                imageName: "circle.grid.cross.fill",
                angle: 45
            )
            VStack(
                alignment: .leading,
                spacing: 20
            ) {
                WelcomMessageView(
                    userName: "James"
                )
                WeightView(weight: 123, weightUnits: "lbs")
                
                DataSummaryView(arrow: "arrow.down", calories: "4.566")
                
                Spacer()
                
                ButtonsView()
            }
            Spacer()
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
    }
}

#Preview {
    DashboardView()
}
