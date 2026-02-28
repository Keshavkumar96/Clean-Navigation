import SwiftUI

@Observable
class ActivityNavigationState {
 var path = NavigationPath()
}

enum ActivityScreen: Hashable {
 case screen2
 case screen3
 case screen4
}
