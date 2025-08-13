//
//  CurrentActivitiesView.swift
//  BodyShapeApp
//
//  Created by James Volmert on 8/4/25.
//

import SwiftUI


struct CurrentActivitiesView: View {
    var body: some View {
        TopRowView()
            .padding()
    }
}

struct TopRowView: View {
    var body: some View
    {
        HStack {
            VStack {
                Text("Result")
                Text("November 2025")
            }
            Spacer()
            Image(systemName: "arrow.left")
        }
        
    }
}
#Preview {
    CurrentActivitiesView()
}
