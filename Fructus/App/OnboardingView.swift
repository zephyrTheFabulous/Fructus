//
//  OnboardingView.swift
//  Fructus
//
//  Created by Anthony on 19/10/24.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES

  var fruits: [Fruit] = fruitsData

    //MARK: - BODY
    var body: some View {
      TabView {
        ForEach(fruits[0...8]) { item in // iterating array of structs
          FruitCardView(fruit: item)
        } //: LOOP
      } //: TAB
      .tabViewStyle(.tabBarOnly)
      .padding(.vertical, 20)
    }
}

#Preview {
  OnboardingView(fruits: fruitsData)
}
