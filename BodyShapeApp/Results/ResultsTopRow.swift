//
//  ResultsTopRow.swift
//  BodyShapeApp
//
//  Created by James Volmert on 8/13/25.
//

import SwiftUI

struct ResultsTopRow: View {
    var body: some View {
        HStack {
            VStack {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("November 2025")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "arrow.uturn.backward")
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .clipShape(Circle())
        }
        
    }
}

#Preview {
    ResultsTopRow()
}
