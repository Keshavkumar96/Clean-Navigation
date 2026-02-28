import SwiftUI

@Observable
class ProfileNavigationState {
  var path = NavigationPath()
}

enum ProfileScreen: Hashable {
  case screen2
  case screen3
  case screen4
}
