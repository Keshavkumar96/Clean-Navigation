import SwiftUI

struct SearchTab: View {
  @State private var navState = SearchNavigationState()
  
  var body: some View {
    NavigationStack(path: $navState.path) {
      SearchView1()
        .navigationDestination(for: SearchScreen.self) { screen in
          switch screen {
          case .screen2: SearchView2()
          case .screen3: SearchView3()
          case .screen4: SearchView4()
          }
        }
    }
    .environment(navState)
  }
}
