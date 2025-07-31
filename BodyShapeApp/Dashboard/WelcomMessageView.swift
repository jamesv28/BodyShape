//
//  WelcomMessageView.swift
//  BodyShapeApp
//
//  Created by James Volmert on 7/30/25.
//

import SwiftUI

struct WelcomMessageView: View {
    let userName: String
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Hi!")
                Text(userName)
                    .fontWeight(.bold)
            }
            .font(.largeTitle)
            Text("your boards looks so good")
                .font(.title3)
                .frame(width: screenWidth / 2, alignment: .leading)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    WelcomMessageView(userName: "james")
}
