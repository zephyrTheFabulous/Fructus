  //
  //  FruitDetailView.swift
  //  Fructus
  //
  //  Created by Anthony on 19/10/24.
  //

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES

  var fruit: Fruit

    //MARK: - BODY
  var body: some View {
    NavigationStack {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {

            // HEADER
          FruitHeaderView(fruit: fruit)

          VStack(alignment: .leading, spacing: 20) {

              // TITLE
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundStyle(fruit.gradientColors[1]) // dark

              // HEADLINE
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)

              // NUTRIENTS
            FruitNutrientsView(fruit: fruit)

              // SUBHEADLINE
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundStyle(fruit.gradientColors[1]) // dark

              // DESCRIPTION
            Text(fruit.description)
              .multilineTextAlignment(.leading)

              // LINK
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          }
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center) // for iPad
        } //: VSTACK
//        .navigationTitle(fruit.title)
//        .navigationBarTitleDisplayMode(.inline)


      } //: SCROLL
      .ignoresSafeArea(.container, edges: .top)
    } //: NAVIGATION
  }
}

#Preview {
  FruitDetailView(fruit: fruitsData[1])
}
