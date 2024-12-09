  //
  //  FruitRowView.swift
  //  Fructus
  //
  //  Created by Anthony on 19/10/24.
  //

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES

  var fruit: Fruit // for data fetch

    //MARK: - BODY
  var body: some View {
    HStack {
      Image(fruit.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80)
        .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
        .background(
          LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
        )
        .clipShape(.rect(cornerRadius: 8))
      VStack(alignment: .leading, spacing: 5) {
        Text(fruit.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(fruit.headline)
          .foregroundStyle(.secondary)
      }
    } //: HSTACK
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  FruitRowView(fruit: fruitsData[0])
    .padding()
}
