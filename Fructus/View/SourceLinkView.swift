//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Anthony on 20/10/24.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTIES

    //MARK: - BODY
    var body: some View {
      GroupBox() {
        HStack {
          Text("Website")

          Spacer()

          Link("Wikipedia",
               destination: URL(string: "https://wikipedia.com")!)
          Image(systemName: "arrow.up.right.square")
        } //: HSTACK
        .font(.footnote)
      } //: BOX
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView()
    .padding()
}
