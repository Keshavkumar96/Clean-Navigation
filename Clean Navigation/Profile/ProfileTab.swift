import SwiftUI

struct ProfileTab: View {
  @State private var navState = ProfileNavigationState()
  
  var body: some View {
    NavigationStack(path: $navState.path) {
      ProfileView1()
        .navigationDestination(for: ProfileScreen.self) { screen in
          switch screen {
          case .screen2: ProfileView2()
          case .screen3: ProfileView3()
          case .screen4: ProfileView4()
          }
        }
    }
    .environment(navState)
  }
}
