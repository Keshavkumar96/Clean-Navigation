import SwiftUI

enum ActivityScreen: String, Hashable {
 case screen2
 case screen3
 case screen4
}

@Observable
class ActivityNavigationState {
  var path = NavigationPath()
  
  func navigate(to screen: ActivityScreen) {
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
