  //
  //  FruitModel.swift
  //  Fructus
  //
  //  Created by Anthony on 19/10/24.
  //

import SwiftUI

struct Fruit: Identifiable {
  var id = UUID() // unique id for each fruit item
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
