import SwiftUI

struct HomeTab: View {
  @Bindable var navState: HomeNavigationState
  
  var body: some View {
    NavigationStack(path: $navState.path) {
      HomeView1()
        .navigationDestination(for: HomeScreen.self) { screen in
          switch screen {
          case .screen2: HomeView2()
          case .screen3: HomeView3()
          case .screen4: HomeView4()
          }
        }
    }
    .environment(navState)
  }
}
