import SwiftUI

struct ButtonsView: View {
    let imgNames = [
        "house.fill",
        "bookmark.fill",
        "alarm.fill",
        "arrow.up.right.square.fill"
    ]
    let actionName = [
        "house",
        "bookmark",
        "alarm",
        "stats"
    ]
    
    @State private var selectedImage = "house.fill"
    
    var body: some View {
        HStack {
            ForEach(0..<imgNames.count, id: \.self) {img in
                OneButtonView(imgName: imgNames[img], selectedImage: $selectedImage, action: {print("some action: \(img)")})
            }
        }
    }
}


struct OneButtonView: View {
    let imgName: String
    @Binding var selectedImage: String
    var action: () -> Void = {
        print("buton pressed")
    }
    var isSelected: Bool {
        selectedImage == imgName
    }
    var body: some View {
        Button {
            selectedImage = imgName
            action()
        } label: {
            Image(systemName: imgName)
                .imageScale(.large)
                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .padding()
                .background(isSelected ? lightGreen.opacity(0.7) : .clear)
                .clipShape(Circle())
        }

    }
}

#Preview {
    ButtonsView()
}
