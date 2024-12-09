  //
  //  ContentView.swift
  //  Fructus
  //
  //  Created by Anthony on 18/10/24.
  //

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES

  @State private var isShowingSetting: Bool = false

  var fruits: [Fruit] = fruitsData

    //MARK: - BODY
  var body: some View {
    NavigationStack {
      List {
        ForEach(fruits.shuffled()) { item in
          NavigationLink {
            FruitDetailView(fruit: item)
          } label: {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        } //: LOOP
      } //: LIST
      .navigationTitle("Fruits")
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            isShowingSetting = true
          } label: {
            Image(systemName: "slider.horizontal.3")
          }
          .sheet(isPresented: $isShowingSetting) {
            SettingsView()
          }

        }
      }
        //      .navigationBarTitleDisplayMode(.inline)
    } //: NAVIGATION
    
  }
}

#Preview {
  ContentView()
}
