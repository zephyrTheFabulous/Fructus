  //
  //  Settings.swift
  //  Fructus
  //
  //  Created by Anthony on 20/10/24.
  //

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES

  @Environment(\.dismiss) var dismiss
  @AppStorage("isOnboarding") var isOnboarding: Bool = false

    //MARK: - BODY
  var body: some View {
    NavigationStack {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
            //MARK: - SECTION 1
          GroupBox {
            Divider()
              .padding(.vertical, 4)
            HStack(alignment: .center, spacing: 10) {
              Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(.rect(cornerRadius: 9))

              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          } label: {
            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
          }

            //MARK: - SECTION 2
          GroupBox {
            Divider()
              .padding(.vertical, 4)
            Text("You can restart the application by toggle the switch in this box.It will starts the onboarding process and you will see the welcome screen again.")
              .padding(.vertical, 8)
              .frame( minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundStyle(.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundStyle(.secondary)
              }
            }
            .padding()
            .background(.tertiary)
            .clipShape(.rect(cornerRadius: 8))

          } label: {
            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          }

            //MARK: - SECTION 3
          GroupBox {

            SettingsRowView(name: "Developer", content: "Efimov Anton")
            SettingsRowView(name: "Designer", content: "Robert Petras")
            SettingsRowView(name: "Compatibility", content: "iOS 14")
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")

            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.1.0")
          } label: {
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          } //: BOX


        } //: VSTACK
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
            Button {
              dismiss()
            } label: {
              Image(systemName: "xmark")
            }

          }
        }
        .padding()
      } //: SCROLL
    } //: NAVIGATION
  }
}

#Preview {
  SettingsView()
}
