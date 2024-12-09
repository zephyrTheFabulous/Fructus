//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Anthony on 20/10/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES

  var fruit: Fruit
  let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    //MARK: - BODY
    var body: some View {
      GroupBox {
        DisclosureGroup("Nutritional value per 100g") {
          ForEach(0 ..< nutrients.count, id: \.self) // string itself as an id
          { item in

            Divider()
              .padding(.vertical, 2)

            HStack {
              Group {
                Image(systemName: "info.circle")
                Text(nutrients[item])
              }
              .foregroundStyle(fruit.gradientColors[1])
              .font(.system(.body, weight: .bold)) // body is the same as headline

              Spacer(minLength: 25)

              Text(fruit.nutrition[item])
                .multilineTextAlignment(.trailing)
            }
          } //: LOOP
        } //: DISCLOSURE
      } //: BOX
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)){
  FruitNutrientsView(fruit: fruitsData[0])
    .preferredColorScheme(.dark)
}
