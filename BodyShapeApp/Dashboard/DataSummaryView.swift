
import SwiftUI

struct DataSummaryView: View {
    let arrow: String
    let calories: String
    
    let delta = 10.0
    let percent1 = 0.6
    let percent2 = 0.4
    
    let peopleImages: [String] = [
        person1, person2, person3, person4
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(lightPurple)
                        .frame(width: geometry.size.width * percent1 - delta)
                        .overlay(
                            VStack {
                                HStack {
                                    Image(systemName: "fork.knife")
                                        .foregroundStyle(.black)
                                        .padding()
                                        .background(.white)
                                        .clipShape(Circle())
                                    Text("36%")
                                    Image(systemName: arrow)
                                }
                                HStack(alignment: .bottom) {
                                    Text(calories)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Calories")
                                        .font(.subheadline)
                                    
                                }
                            }
                            
                        )
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1)
                        .overlay(
                            VStack {
                                Image(systemName: "figure.walk")
                                    .foregroundStyle(.black)
                                    .padding()
                                    .background(lightPurple)
                                    .clipShape(Circle())
                                Text("4.65")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                            }
                        )
                        .frame(width: geometry.size.width * (1 - percent1) - delta)
                }
                .frame(height: geometry.size.width * (1 - percent1) - delta)
                
                // second row
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(width: geometry.size.width * percent2 - delta, height: geometry.size.width * percent2 - delta)
                        .overlay(
                            Text("Start")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                        )
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("Members")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                HStack(spacing: -10) {
                                    let extraPeople = min(peopleImages.count, 2)
                                    let cirleDim = 45.0
                                    ForEach(0..<extraPeople, id: \.self) { i in
                                        Circle()
                                            .frame(width: cirleDim)
                                    }
                                    if peopleImages.count > 2 {
                                        Text("\(peopleImages.count - extraPeople)")
                                    }
                                    
                                }
                            }
                            )
                }
                .frame(height: geometry.size.width * (1 - percent1) - delta)
            }  // end of top level VStack
        }
    }
}

#Preview {
    DataSummaryView(
        arrow: "arrow.down",
        calories: "4.556"
    )
}
