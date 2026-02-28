import SwiftUI

@Observable
class HomeNavigationState {
  var path = NavigationPath()
}

enum HomeScreen: Hashable {
  case screen2
  case screen3
  case screen4
}
