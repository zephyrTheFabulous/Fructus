//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Anthony on 19/10/24.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES

  var fruit: Fruit

  @State private var isAnimating: Bool = false

    //MARK: - BODY
    var body: some View {
      ZStack {
        LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
        
        Image(fruit.image) // same as in FruitCardView
          .resizable()
          .scaledToFit()
          .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1 : 0.6)
          .padding(.vertical, 20)

      } //: ZSTACK
      .frame(height: 440)
      .onAppear {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        }
      }
    }
}

#Preview {
  FruitHeaderView(fruit: fruitsData[0])
}
