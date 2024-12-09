  //
  //  StartButtonView.swift
  //  Fructus
  //
  //  Created by Anthony on 19/10/24.
  //

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES

  @AppStorage("isOnboarding") var isOnboarding: Bool?

    //MARK: - BODY
  var body: some View {
    Button {
      isOnboarding = false
    } label: {
      HStack(spacing: 8) {
        Text("Start")

        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule()
          .strokeBorder(.white, lineWidth: 1.25)
      )
    } //: BUTTON
    .tint(.white) // always-on white

  }
}

#Preview(traits: .sizeThatFitsLayout) {
  StartButtonView()
    .preferredColorScheme(.dark)
    .padding()
}
