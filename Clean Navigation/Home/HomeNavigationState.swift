import SwiftUI

enum HomeScreen: String, Hashable {
  case screen2
  case screen3
  case screen4
}

@Observable
class HomeNavigationState {
  var path = NavigationPath()
  
  func navigate(to screen: HomeScreen) {
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
