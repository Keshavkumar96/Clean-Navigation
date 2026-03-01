import SwiftUI

enum SearchScreen: String, Hashable {
  case screen2
  case screen3
  case screen4
}

@Observable
class SearchNavigationState {
  var path = NavigationPath()
  
  func navigate(to screen: SearchScreen) {
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
