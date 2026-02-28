import SwiftUI

@Observable
class SearchNavigationState {
  var path = NavigationPath()
}

enum SearchScreen: Hashable {
  case screen2
  case screen3
  case screen4
}
