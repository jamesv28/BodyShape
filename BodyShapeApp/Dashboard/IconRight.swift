//
//  IconRight.swift
//  BodyShapeApp
//
//  Created by James Volmert on 7/30/25.
//

import SwiftUI

struct IconRight: View {
    let imageName: String
    var angle: Double = 0.0
    var body: some View {
        HStack {
            Spacer()
//            Text("you are the dragon")
//                .font(.custom("PlusJakartaSans-Regular", size: 46))
            Image(systemName: imageName)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 0, z: 1))
        }
    }
}

#Preview {
    VStack {
        IconRight(imageName: "circle.grid.cross.fill")
        Spacer()
    }
        
}
