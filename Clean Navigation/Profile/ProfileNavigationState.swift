import SwiftUI

enum ProfileScreen: String, Hashable {
  case screen2
  case screen3
  case screen4
}

@Observable
class ProfileNavigationState {
  var path = NavigationPath()
  
  func navigate(to screen: ProfileScreen) {
    path.append(screen)
  }
  
  func popBack() {
    if !path.isEmpty {
      path.removeLast()
    }
  }
  
  func popToRoot() {
    path.removeLast(path.count)
  }
}
