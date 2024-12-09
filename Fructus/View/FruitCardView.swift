  //
  //  FruitCardView.swift
  //  Fructus
  //
  //  Created by Anthony on 19/10/24.
  //

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES

  var fruit: Fruit 

  @State private var isAnimating: Bool = false

    //MARK: - BODY
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
          // IMG
        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1 : 0.6)

          // TITLE
        Text(fruit.title)
          .foregroundStyle(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)

          // HEADLINE
        Text(fruit.headline)
          .foregroundStyle(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480) // iPad version

          // BUTTON: START
        StartButtonView()

      } //: VSTACK
    } //: ZSTACK
    .onAppear{
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background {
      LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
    }
    .clipShape(.rect(cornerRadius: 20))
    .padding(.horizontal, 20)
  }
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
  FruitCardView(fruit: fruitsData[1])
}
