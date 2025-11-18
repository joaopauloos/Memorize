//
//  ContentView.swift
//  Memorize
//
//  Created by Joao Paulo on 18/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            cardView(isFaceUp: true)
            cardView()
            cardView()
            cardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct cardView: View {
    var isFaceUp: Bool = false

    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)

                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)

                Text("🎃")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}

#Preview {
    ContentView()
}
